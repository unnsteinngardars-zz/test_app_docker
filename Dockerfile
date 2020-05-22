FROM node:latest AS build
ARG NPM_TOKEN

WORKDIR /app
COPY . /app

RUN echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > .npmrc
RUN npm install
#RUN rm -rf .npmrc


