FROM node:14-alpine
ARG ENVIRONMENT
ARG PORT

# set timezone
RUN  echo 'http://mirrors.ustc.edu.cn/alpine/v3.5/main' > /etc/apk/repositories \
    && echo 'http://mirrors.ustc.edu.cn/alpine/v3.5/community' >>/etc/apk/repositories \
    && apk update && apk add tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \ 
    && echo "Asia/Shanghai" > /etc/timezone

# Update
# RUN apk update && apk upgrade


# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

RUN ls -al /usr/src/app
RUN npm config set sharp_binary_host "https://npm.taobao.org/mirrors/sharp"
RUN npm config set sharp_libvips_binary_host "https://npm.taobao.org/mirrors/sharp-libvips"
RUN npm install --production --registry=https://registry.npm.taobao.org

#Set node env
ENV NODE_ENV $ENVIRONMENT

EXPOSE $PORT
CMD [ "npm", "start" ]
