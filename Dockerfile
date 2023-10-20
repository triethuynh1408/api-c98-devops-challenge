FROM node:18-alpine

RUN apk --no-cache add curl

# health check for ECS
HEALTHCHECK --interval=10m --timeout=5s \
  CMD curl -f http://localhost:4000/ping || exit 1

WORKDIR /usr/src/app

RUN rm -rf node_modules
# Only copy the package.json file to work directory
COPY package.json .
# Install all Packages
RUN npm install
# Copy all other source code to work directory
ADD . /usr/src/app

# Start App
CMD ["npm", "start"]
EXPOSE 4000