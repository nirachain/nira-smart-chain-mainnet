# RPC security baseline

- Bind node RPC to loopback/private interfaces by default.
- Publish public RPC only through a hardened reverse proxy or gateway.
- Expose only required namespaces and methods; never expose admin/debug/personal/miner APIs publicly.
- Apply TLS, authentication where appropriate, rate limits, request-size limits, and abuse monitoring.
- Restrict CORS and WebSocket origins to known application domains.
- Separate public RPC nodes from validator nodes.
- Keep metrics and admin endpoints private.
- Patch through a tested, pinned release process.
