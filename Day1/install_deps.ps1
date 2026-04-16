winget install CoreyButler.NVMforWindows --accept-package-agreements --accept-source-agreements --silent

# Refresh environment variables so NVM is available
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
$env:NVM_HOME = [System.Environment]::GetEnvironmentVariable("NVM_HOME", "Machine")
if (-not $env:NVM_HOME) { $env:NVM_HOME = [System.Environment]::GetEnvironmentVariable("NVM_HOME", "User") }
$env:NVM_SYMLINK = [System.Environment]::GetEnvironmentVariable("NVM_SYMLINK", "Machine")
if (-not $env:NVM_SYMLINK) { $env:NVM_SYMLINK = [System.Environment]::GetEnvironmentVariable("NVM_SYMLINK", "User") }

# Fallbacks if still not set
if (-not $env:NVM_HOME) { $env:NVM_HOME = "$env:APPDATA\nvm" }
if (-not $env:NVM_SYMLINK) { $env:NVM_SYMLINK = "$env:ProgramFiles\nodejs" }

$env:Path += ";$env:NVM_HOME;$env:NVM_SYMLINK"

# Install LTS and Use it
nvm install lts
nvm use lts

# Install Git
winget install Git.Git --accept-package-agreements --accept-source-agreements --silent
