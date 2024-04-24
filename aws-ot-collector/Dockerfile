# ADOT Collector

FROM public.ecr.aws/aws-observability/aws-otel-collector:latest

# Set the command to run the AWS OTel Collector with the specified configuration file
CMD ["--config=/etc/otel-agent-config.yaml"]

# Set environment variables
ENV AWS_REGION=us-west-2 \
    AWS_PROFILE=default \
    AWS_ACCESS_KEY_ID=<AWS-ACCESS-KEY> \
    AWS_SECRET_ACCESS_KEY=<AWS-SECRET-ACCESS-KEY>

# Expose ports
EXPOSE 1777 55679 13133

# Copy configuration file and AWS credentials
COPY config-test.yaml /etc/otel-agent-config.yaml
#COPY ~/.aws /home/aoc/.aws