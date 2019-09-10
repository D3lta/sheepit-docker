#!/bin/bash

cat << EOF
Username:       ${SHEEPIT_USER}
Token:          ${SHEEPIT_TOKEN}
Cores:          ${SHEEPIT_CORES}
Memory:         ${SHEEPIT_MEM}
Server:         ${SHEEPIT_SERVER}
EOF


exec java -jar "${WORKDIR}"/"${SHEEPIT_JAR_FILENAME}" \
--verbose \
-ui text \
-login "${SHEEPIT_USER}" \
-password "${SHEEPIT_TOKEN}" \
-cores "${SHEEPIT_CORES}" \
-memory "${SHEEPIT_MEM}" \
-server "${SHEEPIT_SERVER}" \
-cache-dir "${SHEEPIT_CACHE}"
