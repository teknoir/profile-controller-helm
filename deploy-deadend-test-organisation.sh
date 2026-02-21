#!/bin/sh
set -euo pipefail

helm -n test-organisation template deadend ./charts/profile-plugin-deadend | \
ssh anders@rtx2000-pro-bw-se.teknoir \
"sudo tee /var/lib/rancher/k3s/server/manifests/teknoir-deadend-test-organisation.yaml >/dev/null"