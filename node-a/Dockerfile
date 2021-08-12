FROM alpine:edge AS builder
# WORKDIR /app
USER root
COPY client .
RUN apk add --no-cache npm && \
apk update apk upgrade 
# RUN --mount=type=bind,source=/,target=/data mkdir -p dist && \
RUN mkdir -p dist && \
npm install && \
npm run build 

FROM alpine:edge AS prod
WORKDIR /app
RUN apk add --no-cache npm && \
apk update apk upgrade 
USER root
COPY server .
COPY --from=builder /node_modules ./node_modules
RUN npm install
COPY --from=builder /dist/main.js public/main.js

RUN npm install

CMD [ "npm", "run", "start" ]

# RUN npm ci