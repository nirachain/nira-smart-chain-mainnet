param(
  [Parameter(Mandatory=$true)][string]$GethPath,
  [Parameter(Mandatory=$true)][string]$GenesisPath,
  [Parameter(Mandatory=$true)][string]$DataDir
)
$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $GethPath -PathType Leaf)) { throw "Client binary not found: $GethPath" }
if (-not (Test-Path -LiteralPath $GenesisPath -PathType Leaf)) { throw "Finalized genesis not found: $GenesisPath" }
$genesisText = Get-Content -Raw -LiteralPath $GenesisPath
if ($genesisText -match 'CHANGE_ME|PENDING_PROTOCOL_APPROVAL') { throw "Genesis contains unresolved placeholders." }
New-Item -ItemType Directory -Force -Path $DataDir | Out-Null
& $GethPath --datadir $DataDir init $GenesisPath
if ($LASTEXITCODE -ne 0) { throw "Genesis initialization failed: $LASTEXITCODE" }
