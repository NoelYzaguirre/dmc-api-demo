FROM python:3.7

WORKDIR /app
COPY . ./
RUN echo $(ls -1 ./)
RUN echo $(pwd)
RUN sh /app/dependencies.sh

CMD ["./start.sh"]
EXPOSE 8080
