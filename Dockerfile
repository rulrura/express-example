
FROM node:16.15.0

MAINTAINER tester <test@test.com>

# /app  디렉토리 생성
RUN mkdir -p /app

# /app 디렉토리를 WORKDIR 로 설정
WORKDIR /app

# Dockerfile 이 있는 경로의 모든 파일을 /app에 복사
ADD . /app

# npm install
RUN npm install


# 환경변수 NODE_ENV 값을 development 로 설정
ENV NODE_ENV development

EXPOSE 3000 80

CMD ["npm", "start"]


