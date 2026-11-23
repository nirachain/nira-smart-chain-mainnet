# Consensus decision

The selected client repository identifies itself as a Core Chain fork and describes Satoshi Plus consensus. That consensus is not interchangeable with Ethereum proof-of-stake or standalone Ethash.

Before mainnet configuration, engineering must decide and document:

- Whether Nira retains Satoshi Plus or changes consensus.
- Required validator election and validator-set contracts.
- Staking/delegation, Bitcoin hash-power delegation (if retained), reward distribution, and slashing.
- Genesis validator bootstrap and recovery procedure.
- Network-specific protocol constants and any source-code changes.
- How all nodes verify the same chain and genesis.

If consensus changes, implement and audit the protocol changes in the client first. Do not attempt to achieve a consensus change solely by editing JSON or TOML.
