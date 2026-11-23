# Nira Smart Chain Mainnet

Network-specific planning and operator repository for a new Nira EVM-compatible mainnet using the Nirachain Core Chain codebase.

**Status: PRE-LAUNCH / NOT PRODUCTION-READY.** No chain ID, finalized genesis, consensus parameters, validator set, bootnodes, or public endpoints have been approved. Do not start a public network from these templates.

## Client code

Client source: https://github.com/Nirachain-Ecosystem/core-chain

This is a fork of Core Chain, which documents Satoshi Plus consensus. EVM compatibility alone does not define a working network. The exact consensus implementation, validator/delegation contracts, Bitcoin-related components (if retained), fork schedule, and client release must be reviewed and configured for Nira.

## Repository map

- `network/chain-metadata.json` — approved public network identity (currently incomplete)
- `network/GENESIS-REQUIREMENTS.md` — genesis and consensus sign-off checklist
- `config/` — peer and node configuration guidance
- `docs/` — launch, validator, RPC, and release procedures
- `scripts/` — guarded genesis initialization helpers

## Launch gates

1. Approve a unique chain ID and network ID. Do not use a guessed value.
2. Decide whether Nira will retain Satoshi Plus consensus or implement a different consensus. This is a protocol-level engineering decision, not a config toggle.
3. Pin an audited client tag/commit and document any Nira-specific source changes.
4. Finalize genesis schema, allocation, fork schedule, validator/delegation setup, and any Bitcoin light-client parameters.
5. Generate genesis using the exact pinned client and verify the genesis hash independently.
6. Deploy and verify bootnodes, validators, monitoring, RPC gateways, backups, and incident response.
7. Run multi-operator testnet and clean-room sync tests before mainnet.

## Node initialization

Only after a finalized `network/genesis.json` has been generated and its hash published:

```bash
./scripts/init-node.sh /path/to/nira-geth network/genesis.json /var/lib/nira
```

Windows PowerShell:

```powershell
.\scripts\init-node.ps1 -GethPath .\geth.exe -GenesisPath .\network\genesis.json -DataDir .\node-data
```

These helpers only initialize a datadir. They do not create genesis, configure consensus, register validators, or start a production node.

Never commit private keys, validator keystores, seed phrases, passwords, JWT secrets, or production credentials.
