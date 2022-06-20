FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000
ENV DB_PORT=5432
ENV DB_SERVER=ec2-52-20-25-139.compute-1.amazonaws.com
ENV DB_DB=d569q9bm5mqdje
ENV DB_USER=u84a8mg6prrja3
ENV DB_PWD=p1ea80830e6cf0d0c2ed4723bce6f2e2b6cac371cb718acc4691da844445c7507

EXPOSE 3000

CMD ["npm","start"]