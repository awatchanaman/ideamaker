$ErrorActionPreference = 'Stop'
$url = 'https://download.raise3d.com/ideamaker/release/4.0.1/install_ideaMaker_4.0.1.4802.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'ideamaker*'
    checksum       = '3269c1857fcf1bc50e8cb2688047bc6dfa44111a1cac930dbcba3a97b87a6cb7'
    checksumType   = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
