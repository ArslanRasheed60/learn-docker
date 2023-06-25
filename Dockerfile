# TODO: mosh 
# * initials
FROM node:alpine
COPY . /app
WORKDIR /app
CMD node app.js


# # specify an image
# FROM node:18.16-alpine3.17

# ## user and user groups
# RUN addgroup ars && adduser -S -G ars ars
# USER ars
# # to check user -> "whoami" command


# WORKDIR /app
# COPY . .
# RUN npm install

# ## setting environment variables
# ENV MY_VAR=http:/myurl.com
# #printenv to inspect environment variable

# ## exposing ports
# EXPOSE 3000

# CMD [ "npm", "start" ]


