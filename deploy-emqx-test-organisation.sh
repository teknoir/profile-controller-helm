#!/bin/sh
set -euo pipefail

helm -n test-organisation template emqx ./charts/profile-plugin-emqx | \
ssh anders@rtx2000-pro-bw-se.teknoir \
"sudo tee /var/lib/rancher/k3s/server/manifests/teknoir-emqx-test-organisation.yaml.yaml >/dev/null"