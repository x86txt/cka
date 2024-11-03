FROM nginx:alpine

# Remove the default index.html file
RUN rm -f /usr/share/nginx/html/index.html

# Copy website files to the default NGINX directory
COPY 03-resources /usr/share/nginx/html/03-resources
COPY lib /usr/share/nginx/html/lib

# Copy the custom NGINX configuration
COPY default.conf /etc/nginx/conf.d/default.conf
