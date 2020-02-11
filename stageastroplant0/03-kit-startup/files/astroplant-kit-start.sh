#!/usr/bin/env bash
source /home/pi/.profile
if [[ -f "./kit_config.toml" ]]; then
    astroplant-kit run
else
    echo "kit_config.toml does not exist"
    exit 1
fi
