FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx

COPY "MyApp" /var/www/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]