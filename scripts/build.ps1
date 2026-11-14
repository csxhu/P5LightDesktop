param(
    [Parameter(Mandatory=$true)][string]$ApktoolJar,
    [string]$Java = 'java',
    [string]$Zipalign,
    [string]$ApksignerJar,
    [string]$Keystore,
    [string]$KeyAlias
)
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$out = Join-Path $root 'out'
New-Item -ItemType Directory -Force $out | Out-Null
function Run($Exe, $Arguments) {
    & $Exe @Arguments
    if ($LASTEXITCODE -ne 0) { throw "Command failed: $Exe (exit $LASTEXITCODE)" }
}
Run $Java @('-jar', $ApktoolJar, 'b', (Join-Path $root 'app'), '-o', (Join-Path $out 'p5home-unsigned.apk'))
if ($Keystore) {
    if (-not $Zipalign -or -not $ApksignerJar) { throw 'Signing requires Zipalign and ApksignerJar.' }
    Run $Zipalign @('-f','4', (Join-Path $out 'p5home-unsigned.apk'), (Join-Path $out 'p5home-aligned.apk'))
    $signArgs = @('-jar',$ApksignerJar,'sign','--ks',$Keystore,'--out',(Join-Path $out 'p5home.apk'))
    if ($KeyAlias) { $signArgs += @('--ks-key-alias',$KeyAlias) }
    $signArgs += (Join-Path $out 'p5home-aligned.apk')
    Run $Java $signArgs
    Run $Java @('-jar',$ApksignerJar,'verify','--verbose',(Join-Path $out 'p5home.apk'))
} else {
    Write-Output 'Built unsigned APK. Sign with your own keystore before installing.'
}
