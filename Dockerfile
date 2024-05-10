FROM node:10.23.1
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
ENV PORT=8083
EXPOSE ${PORT}

CMD [ "npm","run","dev" ]
#CMD [ "node","index.js" ]
