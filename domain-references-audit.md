# Domain References Audit

All hard-coded references to 'drownedashes.com' in config, code, and docs:

---

## migration-plan.md

```
3:  ## 1. Audit and Inventory
4:  - List all current public domains/subdomains in use.
5:  - Find all config/code references to old domain(s) (drownedashes.com, etc).
6:  - AGENT: codebase-inspection (list domain references; suggest a search agent)
```

---

## nginxdata/nginx.conf

```
7:     server_name drownedashes.com next.drownedashes.com www.drownedashes.com next.tlnnegm.local www.tlnnegm.local tlnnegm.local;
12:         ssl_certificate /etc/nginx/certs/drownedashes_com_chain.crt;
13:         ssl_certificate_key /etc/nginx/certs/drownedashes_com.key;
14:         server_name drownedashes.com next.drownedashes.com www.drownedashes.com next.tlnnegm.local www.tlnnegm.local tlnnegm.local;
50:         server_name ntfy.tlnnegm.local ntfy.drownedashes.com;
55:         ssl_certificate /etc/nginx/certs/drownedashes_com_chain.crt;
56:         ssl_certificate_key /etc/nginx/certs/drownedashes_com.key;
57:         server_name ntfy.tlnnegm.local ntfy.drownedashes.com ;
76:         server_name n8n.tlnnegm.local n8n.drownedashes.com;
82:         server_name n8n.tlnnegm.local n8n.drownedashes.com;
84:         ssl_certificate /etc/nginx/certs/drownedashes_com_chain.crt;
85:         ssl_certificate_key /etc/nginx/certs/drownedashes_com.key;
122:         server_name ai.tlnnegm.local ai.drownedashes.com ;
128:         ssl_certificate /etc/nginx/certs/drownedashes_com_chain.crt;
129:         ssl_certificate_key /etc/nginx/certs/drownedashes_com.key;
135:         server_name ai.tlnnegm.local ai.drownedashes.com ;
158:         server_name jellyfin.tlnnegm.local jellyfin.drownedashes.com;
164:         server_name jellyfin.tlnnegm.local jellyfin.drownedashes.com;
166:         ssl_certificate /etc/nginx/certs/drownedashes_com_chain.crt;
167:         ssl_certificate_key /etc/nginx/certs/drownedashes_com.key;
203:         server_name ntfy.tlnnegm.local ntfy.drownedashes.com;
209:         server_name ntfy.tlnnegm.local ntfy.drownedashes.com;
211:         ssl_certificate /etc/nginx/certs/drownedashes_com_chain.crt;
212:         ssl_certificate_key /etc/nginx/certs/drownedashes_com.key;
248:         server_name adguard.tlnnegm.local adguard.drownedashes.com;
254:         server_name adguard.tlnnegm.local adguard.drownedashes.com;
256:         ssl_certificate /etc/nginx/certs/drownedashes_com_chain.crt;
257:         ssl_certificate_key /etc/nginx/certs/drownedashes_com.key;
```

---

(End of audit)
