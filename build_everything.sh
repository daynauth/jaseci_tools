docker build --no-cache -f Dockerfile.core . -t daynauth/jaseci-core:latest
docker push daynauth/jaseci-core:latest

docker build --no-cache -f Dockerfile.kit . -t daynauth/jaseci-kit:latest
docker push daynauth/jaseci-kit:latest

docker build --no-cache -f Dockerfile.full . -t daynauth/jaseci_full:latest
docker push daynauth/jaseci_full:latest
