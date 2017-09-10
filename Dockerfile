FROM node:latest
 
RUN apt-get update

# Install yarn
RUN npm install -g yarn

# Create forlder to pu application
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install package
COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install -g
 
COPY . .

CMD yarn start