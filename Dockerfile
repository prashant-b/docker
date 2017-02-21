#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM nginx

# remove default conf file
RUN rm -v /etc/nginx/nginx.conf
  
# Define mountable directories.
#VOLUME [ "/etc/nginx/", "/var/log/nginx","/usr/share/nginx/lms"]
#USER root

# Copy Custom conf file
#ADD nginx.conf /etc/nginx/

# Define working directory.
WORKDIR /etc/nginx

# Expose ports.
EXPOSE 80
EXPOSE 443

# Define default command.
CMD ["nginx", "-g", "daemon off;"]