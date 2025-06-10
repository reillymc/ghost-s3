FROM ghost:5 AS ghost-base

WORKDIR /var/lib/ghost

COPY ./ghos3 /usr/local/lib/node_modules/ghos3

# Install S3 storage adapter and link to ghost storage adapters directory
RUN cd /usr/local/lib/node_modules/ghos3 && \
    npm install && npm run build && \
    ln -s /usr/local/lib/node_modules/ghos3 /var/lib/ghost/current/core/server/adapters/storage/s3
