FROM alpine:3.14
COPY jobs.cron ./
COPY ./start.sh .
CMD ["sh", "./start.sh"]
