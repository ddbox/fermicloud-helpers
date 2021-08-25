#!/bin/bash
export X509_USER_CERT=/etc/grid-security/hostcert.pem
export X509_USER_KEY=/etc/grid-security/hostkey.pem
grid-proxy-init -valid 96:00 -rfc
/bin/cp /tmp/x509up_u0 /tmp/frontend_proxy
/bin/cp /tmp/x509up_u0 /tmp/vo_proxy
/bin/cp /tmp/x509up_u0 /tmp/grid_proxy
chown frontend:frontend /tmp/frontend_proxy
chown frontend:frontend /tmp/vo_proxy
chown testuser:testuser /tmp/grid_proxy
