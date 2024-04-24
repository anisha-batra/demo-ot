# Traffic generator will make HTTP requests to ot-sample-app that sends OTel Metrics and Traces

FROM ellerbrock/alpine-bash-curl-ssl:latest

# Health check or command to run the application
# Replace with the actual command or entrypoint script
CMD [ "/bin/bash", "-c", "sleep 10; while :; do curl ot-sample-app:4567/outgoing-http-call > /dev/null 1>&1; sleep 2; curl ot-sample-app:4567/aws-sdk-call > /dev/null 2>&1; sleep 5; done" ]
