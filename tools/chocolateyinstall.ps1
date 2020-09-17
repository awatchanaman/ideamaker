$ErrorActionPreference = 'Stop'
$url        = 'https://download.raise3d.com/ideamaker/release/3.6.1/install_ideaMaker_3.6.1.4415.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'ideamaker*'
  checksum      = '29D6C2B3CB8D0E8B5892F66CF427079848A286CC5B51879ABB021EA80781B843'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
