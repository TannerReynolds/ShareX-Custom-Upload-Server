FROM node:alpine

WORKDIR /usr/src/app
COPY src/ package.json .

RUN apk --no-cache add exiftool && \
    npm i

EXPOSE 80 443
CMD ["node", "index.js"]