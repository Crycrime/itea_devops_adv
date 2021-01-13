FROM nginx

COPY index.html /usr/share/nginx/html

ENV MY_NAME="Vitalii Vashkulat"

#EXPOSE 3002/tcp 

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh"] 

