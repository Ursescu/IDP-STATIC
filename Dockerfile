FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/static-server
RUN chown -R nginx:nginx /var/www/static-server
COPY nginx.conf /etc/nginx/nginx.conf