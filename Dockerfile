
FROM node:latest
ENV APP_NAME docker-angular-cli
ENV APP_DIR /$APP_NAME
RUN npm install -g @angular/cli@latest
RUN npm install --save-dev @angular/cli@latest
RUN ng new $APP_NAME --skip-git
WORKDIR $APP_DIR
EXPOSE 4200
CMD ng serve --host 0.0.0.0
