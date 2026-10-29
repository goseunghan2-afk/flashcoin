# Node.js 이미지 사용
FROM node:18-alpine

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 복사 및 설치
COPY package*.json ./
RUN npm install

# 소스 코드 복사
COPY . .

# 포트 노출 (Render가 요청하는 포트는 $PORT 환경변수로 받음)
EXPOSE 3000

# 서버 시작
CMD ["node", "server.js"]
