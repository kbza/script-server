#!/bin/bash -l

# Obtain info from env_vars

while IFS='=' read -r -d '' n v; do
    if [[ "$n" =~ ^PARAM ]]; then
        printf "'%s'='%s'\n" "$n" "$v"
    fi
done < <(env -0)