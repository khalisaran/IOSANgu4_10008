FROM java:8
RUN mkdir /app
COPY build/libs/IOSANgu4_10008.jar /app
COPY wait-for-it.sh /app
RUN chmod +x /app/wait-for-it.sh
WORKDIR /app
CMD ["java","-jar","IOSANgu4_10008.jar"]