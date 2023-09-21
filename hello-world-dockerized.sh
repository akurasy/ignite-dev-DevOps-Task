#build Dockerfile with the command
docker build -t hello-express .
#hello-express is the image name.

#run a tag of the docker image with the command below
#docker tag hello-express your-username/hello-express:latest
#since my username is "akurasy" , the image was tagged below

docker tag hello-express akurasy/hello-express:latest

#login to docker
docker login

#enter login details

#push image to docker
docker push akurasy/hello-express:latest

echo "docker image with the name 'hello-express:latest' has been successfully dockerized"
