# Validator operations checklist

- Confirm the approved consensus and validator eligibility rules.
- Complete testnet validator onboarding and failover drills.
- Use dedicated hardened hosts and dedicated validator identities.
- Generate keys using the approved client tooling on controlled systems.
- Store recovery material offline; never commit keys or keystores to Git.
- Restrict SSH, RPC, and P2P access with firewall rules.
- Document monitoring, key rotation, recovery, upgrades, slashing/fault handling, and incident response.
- Keep validator RPC private; use separate public RPC infrastructure.
