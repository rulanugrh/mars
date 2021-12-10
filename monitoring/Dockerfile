# Base Image 
FROM nginx
WORKDIR /app
LABEL maintainer="github.com/Kyxzy"

# Install Package
RUN apt update -y && apt install wget -y
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.32.0-rc.1/prometheus-2.32.0-rc.1.linux-amd64.tar.gz
RUN tar -xvf  prometheus-2.32.0-rc.1.linux-amd64.tar.gz
RUN mv prometheus-2.32.0-rc.1.linux-amd64 prometheus
RUN chmod 777 /app/prometheus/prometheus

# Running Prometheus
WORKDIR /app/prometheus
CMD ["./prometheus"]

# Expose Port
EXPOSE 9090
