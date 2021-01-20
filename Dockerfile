FROM node:alpine
WORKDIR /app
COPY package.json yarn.lock dist ./
RUN yarn install --frozen-lockfile

EXPOSE 4000
CMD ["node", "main.js"]
