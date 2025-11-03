
#!/usr/bin/env bash
set -euo pipefail
mkdir -p dist
zip -r dist/app_artifact.zip app.py
echo "Artifact created at dist/app_artifact.zip"
