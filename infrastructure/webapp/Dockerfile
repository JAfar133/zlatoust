FROM bellsoft/liberica-openjdk-alpine:17.0.2
COPY ./*.jar webapp.jar

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]