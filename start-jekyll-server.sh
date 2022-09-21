#!/bin/bash

# Allow the listen port to be customisable via a environment variable
PORT="${PORT:-4000}"

# Include configuration that is needed in dockerised environments,
# in addition to the standard configuration needed for github pages
CONFIG="${CONFIG:-_config.yml,_config_docker.yml}"

# Launch the jeckyll server in a development-friendly configuration
jekyll server --config "${CONFIG}" --port "${PORT}" --livereload
