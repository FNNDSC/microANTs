#!/bin/bash

if [ -z "$1" ]; then
  echo "usage: $0 PROGRAM_NAME > Dockerfile"
  exit 1
fi

exec cat << EOF
FROM docker.io/library/debian:bookworm-slim

COPY --from=docker.io/fnndsc/ants:2.5.0-notshared "/opt/ants/bin/$1" "/usr/local/bin/$1"

CMD ["/usr/local/bin/$1"]
EOF
