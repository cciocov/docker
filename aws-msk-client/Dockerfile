FROM apache/kafka

RUN wget -P /opt/kafka/libs \
  https://github.com/aws/aws-msk-iam-auth/releases/download/v1.1.1/aws-msk-iam-auth-1.1.1-all.jar

COPY --chmod=755 entrypoint.sh /entrypoint.sh
COPY client.properties /client.properties

ENTRYPOINT ["/entrypoint.sh"]
