# #specify an image
# FROM node:alpine

# WORKDIR /usr/app

# # install some dependences
# COPY ./package.json ./
# RUN npm install
# COPY ./ ./

# #default command
# CMD ["npm", "start"]

# TODO: mosh
FROM node:alpine
COPY . /app
WORKDIR /app
CMD node app.js