# Issue/Renew wildcard SSL certs for torrift.com and subdomains via DNS-01 (Cloudflare)
# Uses official certbot Docker image with Cloudflare plugin

CLOUDFLARE_INI="$(pwd)/cloudflare.ini"
LE_DIR="/etc/letsencrypt"
LIB_DIR="/var/lib/letsencrypt"
DOMAIN="torrift.com"
EMAIL="nicholasaa+l1g6ztvv@gmail.com"

if ! [ -f "$CLOUDFLARE_INI" ]; then
  echo "[ERROR] cloudflare.ini missing in current directory." >&2
  exit 1
fi

sudo docker run --rm \
  -v "$CLOUDFLARE_INI:/cloudflare.ini:ro" \
  -v "$LE_DIR:$LE_DIR" \
  -v "$LIB_DIR:$LIB_DIR" \
  certbot/dns-cloudflare certonly \
    --dns-cloudflare \
    --dns-cloudflare-credentials /cloudflare.ini \
    --dns-cloudflare-propagation-seconds 30 \
    -d "$DOMAIN" -d "*.$DOMAIN" \
    --email "$EMAIL" \
    --agree-tos \
    --non-interactive

CODE=$?
if [ $CODE -eq 0 ]; then
  echo "[INFO] Certificates issued/renewed under $LE_DIR/live/$DOMAIN/"
else
  echo "[ERROR] Docker certbot run failed ($CODE)." >&2
fi
