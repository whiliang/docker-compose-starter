# Docker image for springboot application
### 基础镜像，使用alpine操作系统，openjkd使用8u201
FROM openjdk:8-jdk-alpine

#指定阿里镜象
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

#增加字体，解决验证码没有字体报空指针问题
RUN set -xe \
&& apk --no-cache add ttf-dejavu fontconfig

#系统编码
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

#声明一个挂载点，容器内此路径会对应宿主机的某个文件夹
VOLUME /tmp

#应用构建成功后的jar文件被复制到镜像内，名字也改成了
ADD app-1.0.0.jar /app.jar

#启动容器时的进程
ENTRYPOINT ["java","-jar","/app.jar"]
#暴露8088端口
EXPOSE 8088
