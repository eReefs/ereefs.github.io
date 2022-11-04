FROM jekyll/jekyll:stable

# Ensure the working directory is set
WORKDIR /srv/jekyll

# Add the additional gems we depend on.
RUN gem install \
    github-pages \
    jekyll-include-cache \
    jekyll-redirect-from \
    jekyll-remote-theme \
    minimal-mistakes-jekyll \
    webrick

# Copy in all the content files
COPY ./docs/ ./

# Pre-build the docs to be deployed with the image
RUN jekyll b

# Use a custom startup command
COPY ./start-jekyll-server.sh /
RUN chmod 0755 /start-jekyll-server.sh

ENV JEKYLL_ENV="docker"
CMD jekyll server --config "_config.yml,_config_docker.yml" --port "4000" --livereload

