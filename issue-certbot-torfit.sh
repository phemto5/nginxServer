#!/bin/bash
# Issue/renew wildcard SSL certs for torfit.com and subdomains with DNS-01 (Cloudflare)
DOMAIN=torfit.com
CERTBOT_CONF=cloudflare.ini
LETSENCRYPT_DIR=/etc/letsencrypt/live/$DOMAIN

echo "[INFO] Requesting certificate for *.$DOMAIN and $DOMAIN via Cloudflare DNS-01"
certbot certonly \ 
  --dns-cloudflare \ 
  --dns-cloudflare-credentials $CERTBOT_CONF \ 
  --dns-cloudflare-propagation-seconds 30 \ 
  -d $DOMAIN -d *.$DOMAIN \
  --non-interactive \ 
  --agree-tos \ 
  --email your-email@example.com

if [ -d "$LETSENCRYPT_DIR" ]; then
  echo "[INFO] Certificates issued under $LETSENCRYPT_DIR/"
else
  echo "[ERROR] Certificate issuance failed."
fi
