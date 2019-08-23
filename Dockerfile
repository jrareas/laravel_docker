FROM ubuntu:latest

LABEL maintainer="jrareas@gmail.com"

# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

# Install NGINX to test.
RUN apt-get install nginx -y
 
#
# Expose port 80
EXPOSE 80
 
#
# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]
