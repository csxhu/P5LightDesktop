param(
    [Parameter(Mandatory=$true)][string]$AndroidJar,
    [Parameter(Mandatory=$true)][string]$D8Jar,
    [Parameter(Mandatory=$true)][string]$BaksmaliClasspath,
    [string]$Java='java',
    [string]$Javac='javac'
)
$ErrorActionPreference='Stop'
$root=Split-Path $PSScriptRoot -Parent
# A fresh directory prevents stale compiler output entering the build.
$work=Join-Path $root ('out/hotspot-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Force "$work/classes","$work/dex" | Out-Null
function Run($Exe,$Arguments) { & $Exe @Arguments; if($LASTEXITCODE -ne 0){throw "Command failed: $Exe"} }
$sources=@(Get-ChildItem "$root/src/hotspot" -Recurse -Filter '*.java' | ForEach-Object FullName)
Run $Javac (@('-encoding','UTF-8','-source','8','-target','8','-classpath',$AndroidJar,'-d',"$work/classes") + $sources)
$classes=@(Get-ChildItem "$work/classes" -Recurse -Filter '*.class' | ForEach-Object FullName)
Run $Java (@('-cp',$D8Jar,'com.android.tools.r8.D8','--lib',$AndroidJar,'--min-api','28','--output',"$work/dex") + $classes)
Run $Java @('-cp',$BaksmaliClasspath,'org.jf.baksmali.Main','d',"$work/dex/classes.dex",'-o',"$work/smali")
Copy-Item "$work/smali/com/local/p5home/*.smali" "$root/app/smali/com/local/p5home/" -Force
Write-Output 'Hotspot smali updated. Run build.ps1 next.'
