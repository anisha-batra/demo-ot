# Sample web application which will generate Metrics and Traces data if the enable API is called
# src - https://github.com/aws-observability/aws-otel-test-framework/tree/terraform/sample-apps/spark

FROM public.ecr.aws/aws-otel-test/aws-otel-java-spark:latest

# Set environment variables
ENV OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:4317"
ENV OTEL_RESOURCE_ATTRIBUTES="service.namespace=AOCDockerDemo,service.name=AOCDockerDemoService"
ENV AWS_REGION="us-west-2"
ENV OTEL_METRICS_EXPORTER="otlp"
ENV LISTEN_ADDRESS="0.0.0.0:4567"

# Mount the AWS credentials directory
VOLUME /root/.aws

# Expose the port for the web server
EXPOSE 4567

# Health check or command to run the application
# Replace with the actual command or entrypoint script
#CMD ["your-application-start-command"]