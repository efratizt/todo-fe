FROM node:14-alpine
WORKDIR /app
ENV PATH=/app/node_modules/.bin:$PATH
Copy package*.json /app/
RUN npm install
COPY . .
EXPOSE 3000
CMD npm start