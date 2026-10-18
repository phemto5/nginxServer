# Migration Plan: Migrate All Services to torrift.com

## 1. Audit and Inventory
- List all current public domains/subdomains in use.
- Find all config/code references to old domain(s) (drownedashes.com, etc).
- AGENT: codebase-inspection (list domain references; suggest a search agent)

## 2. Register torrift.com in Cloudflare
- Confirm ownership and DNS control in Cloudflare panel.
- AGENT: cloudflare API skills (if available) or manual verification

## 3. Set Up DNS and Dynamic DNS
- Recreate records for all services under torrift.com in Cloudflare.
- Configure DDNS for hosts with dynamic IPs (e.g., install DDNS client, Cloudflare API token)
- AGENT: cloudflare API, automation for update scripts; agent-audit for DDNS updates

## 4. Update nginx Configuration
- Backup all configs.
- Replace all legacy domain(s) in nginx server_name, SSL, redirects, etc.
- Zero-downtime reload/restart plan.
- AGENT: automation for pattern replace, codebase-inspection; agent-orchestrator for rollout

## 5. Obtain Let’s Encrypt Certificates (DNS-01)
- Set up certbot w/ Cloudflare plugin and API key for torrift.com.
- Generate/renew certificates for torrift.com and subdomains.
- Automate renewal and nginx reload hooks.
- AGENT: automation for certbot install/run; agent-bitwarden-credential for secrets

## 6. Test and Deploy
- Reload nginx, confirm HTTPS, test certificates.
- Monitor logs.
- AGENT: automation for smoke tests, error log tailing

## 7. Update Dependencies, Scripts, Documentation
- Find and update any remaining old domain references in code/scripts/docs.
- AGENT: codebase-inspection, documentation update skills

## 8. Monitor and Rollback
- Set up checks for service health.
- Retain old configs/records for quick rollback.
- AGENT: agent-audit for logging, agent-orchestrator for fast rollback.

# Agent Assignment Suggestions:
- Code/domain search: codebase-inspection
- nginx config edits: automation, agent-orchestrator
- Cloudflare/DDNS: cloudflare API + automation (if skill available)
- SSL/certbot: automation, agent-bitwarden-credential (for secrets)
- Deploy/test/rollback: agent-orchestrator, agent-audit
