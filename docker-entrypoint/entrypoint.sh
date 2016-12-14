#!/bin/sh
set -e

# Run entry point scripts, if any
DIR=/opt/docker-entrypoint/entrypoint.d
if [[ -d "$DIR" ]]
then
    # Set DOLLAR_SIGN as a way to use dollar signs with envsubst
    export DOLLAR_SIGN='$'
    for script in ${DIR}/*; do
      echo "Executing ${script}"
      bash ${script}
    done
fi

echo "Starting up..."
exec "$@"
