#! /bin/bash

if [ -z "${CATALINA_BASE}" ]; then
  echo "CATALINA_BASE is not set; failure"
  exit 1
fi

if [ ! -x "${CATALINA_BASE}/bin/clean.sh" ]; then
  echo "CATALINA_BASE seems to be incorrect; failure"
  exit 1
fi

echo "Cleaning temp and work directories"
rm -rf "${CATALINA_BASE}/temp/"*
rm -rf "${CATALINA_BASE}/work/"*
