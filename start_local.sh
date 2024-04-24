# Build Docker Images
docker build -t aws-ot-collector ./aws-ot-collector
docker build -t ot-sample-app ./ot-sample-app
docker build -t traffic-generator ./traffic-generator

# Start Containers from Docker Images
docker run -d --network="host" --name aws-ot-collector aws-ot-collector
docker run -d --network="host" --name ot-sample-app -v ~/.aws:/root/.aws ot-sample-app
docker run -d --network="host" --name traffic-generator traffic-generator