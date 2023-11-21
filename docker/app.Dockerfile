# Build
FROM node:20-alpine AS build
WORKDIR /usr/src/app

COPY package*.json  ./
COPY prisma ./prisma/

RUN npm ci

COPY . .


