FROM mhart/alpine-node

WORKDIR /landr-json-server
ADD . .
RUN apk add --no-cache curl make gcc g++ python
RUN npm install

RUN apk del curl make gcc g++ python && \
  rm -rf /etc/ssl /SHASUMS256.txt.asc \
    /usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp /root/.gnupg \
    /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html

EXPOSE 3000
CMD ["npm","start"]
