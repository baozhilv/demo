# 使用最新的 Nginx 镜像作为基础
FROM nginx:latest
# 复制当前目录下的 index.html 文件到容器中的 /usr/share/nginx/html 目录
COPY index.html /usr/share/nginx/html/index.html
# 暴露容器内部的 80 端口
EXPOSE 80
# 容器启动时执行的命令，这里是启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
