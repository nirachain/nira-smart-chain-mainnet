# Node configuration

The Core Chain README documents generating a baseline configuration with the client’s `dumpconfig` command. Use the exact pinned Nira client binary and inspect its supported flags before producing `config.toml`.

Recommended workflow:

1. Build or obtain the approved Nira client release.
2. Run its `geth dumpconfig` command in a controlled environment.
3. Review P2P, HTTP, WS, metrics, datadir, sync, and consensus-specific settings.
4. Keep validator nodes separate from public RPC nodes.
5. Bind RPC to loopback/private interfaces and publish through a hardened gateway.

Do not assume a generic upstream Geth TOML file is fully compatible with this fork.
