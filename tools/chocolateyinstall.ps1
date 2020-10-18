$ErrorActionPreference = 'Stop'
$url        = 'https://download.raise3d.com/ideamaker/release/3.6.1/install_ideaMaker_3.6.1.4415.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'ideamaker*'
  checksum      = '29d6c2b3cb8d0e8b5892f66cf427079848a286cc5b51879abb021ea80781b843'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
