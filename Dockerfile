FROM nginx


ENV TZ="Asia/Shanghai"

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
	&& mkdir -p /app/web

COPY ./nginx.conf /etc/nginx/nginx.conf

ENV \
    PORT=8090 \
    HOST=0.0.0.0
 
EXPOSE 8090

#ENTRYPOINT /app/entrypoint.sh
