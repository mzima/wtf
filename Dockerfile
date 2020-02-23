FROM nginx

COPY start.sh /
COPY index.html /usr/share/nginx/html
COPY image.jpg /usr/share/nginx/html
RUN chmod +x /start.sh

ENV who="stranger"
ENV debug="false"

EXPOSE 80
ENTRYPOINT ["./start.sh"]
