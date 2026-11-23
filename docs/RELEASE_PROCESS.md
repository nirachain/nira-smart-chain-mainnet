# Mainnet release process

1. Pin client source to a reviewed tag/commit and record source changes.
2. Build reproducibly and publish checksums/signatures.
3. Generate genesis with the pinned client tooling.
4. Independently verify chain ID, genesis hash, allocations, fork schedule, and consensus parameters.
5. Test clean-datadir initialization and multi-node sync.
6. Verify bootnodes and peer public keys with operators.
7. Complete validator, RPC, monitoring, backup, and incident-response reviews.
8. Publish signed release artifacts and endpoint details only after launch approval.
