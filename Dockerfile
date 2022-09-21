FROM jekyll/jekyll:stable

# Ensure the working directory is set
WORKDIR /srv/jekyll

# Add the additional gems we depend on.
RUN gem install \
    jekyll-include-cache \
    webrick

# Copy in all the content files
COPY ./docs/ ./

# Pre-build the docs to be deployed with the image
RUN jekyll b

# Use a custom startup command
COPY ./start-jekyll-server.sh /
RUN chmod 0755 /start-jekyll-server.sh

ENV JEKYLL_ENV="docker"
CMD /start-jekyll-server.sh
