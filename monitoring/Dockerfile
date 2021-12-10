FROM nginx

WORKDIR /app

LABEL maintainer="github.com/Kyxzy"

COPY /prometheus/* /app/

CMD ["./prometheus"]

EXPOSE 9090
