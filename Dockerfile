FROM nginx


ENV TZ="Asia/Shanghai"

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
	&& mkdir -p /app/web

COPY ./nginx.conf /etc/nginx/nginx.conf

#ENTRYPOINT /app/entrypoint.sh
