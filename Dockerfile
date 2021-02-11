From ubuntu
RUN apt update -y
RUN apt install nodejs -y && apt install npm -y
RUN npm install @angular/cli@7.3.9 -g && npm install pm2 -g
CMD /srv
CMD mkdir -p /www/htdocs 
CMD /www/htdocs
RUN ng new my-angular-app
CMD my-angular-app
RUN pm2 start "ng serve" --name my-angular-app
EXPOSE 4200

