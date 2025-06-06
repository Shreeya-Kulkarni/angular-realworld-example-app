


FROM node:20-slim


WORKDIR /app


COPY ./package*.json .


RUN npm install


RUN npm install -g @angular/cli


COPY . .


EXPOSE 4200


CMD ["npx", "ng", "serve", "--host", "0.0.0.0"]

