FROM ghost:5 AS ghost-base

WORKDIR /var/lib/ghost

# Install S3 storage adapter and link to ghost storage adapters directory
RUN npm install -g ghos3 && \
    ln -s /usr/local/lib/node_modules/ghos3 ./current/core/server/adapters/storage/s3
