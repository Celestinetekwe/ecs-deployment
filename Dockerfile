FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/config.d
COPY scr1/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off"]
