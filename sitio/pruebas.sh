#!/usr/bin/env bash
set -e
test -f sitio/index.html || { echo "Falta sitio/index.html"; exit 1; }
grep -q "<title>" sitio/index.html || { echo "index.html no tiene <title>"; exit 1; }
if grep -q "ROTO" sitio/index.html; then
  echo "Se encontró el marcador ROTO: la prueba falla"
  exit 1
fi
echo "Pruebas superadas"
