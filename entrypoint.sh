#!/bin/bash

echo "Using: ${USER}:${PASS} with ${cores} cores and cache-dir: ${cache}"

exec java -jar ${WORKDIR}/${NAME} -ui text -login ${USER} -password ${PASS} -cores ${cores} -cache-dir ${cache}
