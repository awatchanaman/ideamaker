$ErrorActionPreference = 'Stop'
$url = 'https://download.raise3d.com/ideamaker/release/4.0.1/install_ideaMaker_4.0.1.4802.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'ideamaker*'
    checksum       = '026C500ADADBBD138D1AC6580728CE188D0B316AEB508F0564933FD73DFE47FF'
    checksumType   = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
