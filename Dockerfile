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

# Fix permissions to work around Bowen cloud umask issues,
# Then pre-compile the website to speed up the initial load time
RUN find ./ -type d -print0 | xargs --no-run-if-empty -0 chmod o+rx && \
    find ./ -type f -print0 | xargs --no-run-if-empty -0 chmod o+r && \
    jekyll b

# Use a custom startup command
COPY ./start-jekyll-server.sh /
RUN chmod 0755 /start-jekyll-server.sh

ENV JEKYLL_ENV="docker"
CMD jekyll server --config "_config.yml,_config_docker.yml" --port "4000" --livereload
