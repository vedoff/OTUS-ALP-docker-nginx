FROM centos:latest

WORKDIR /app

COPY . .

RUN rpm -Uvh nginx-1.19.3-1.el8.ngx.x86_64.rpm