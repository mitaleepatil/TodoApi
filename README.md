# TodoApp
ASP.Net Core REST API Demo

## Checking with `/ping` path

```shell
curl http://localhost:8080/ping
```

## Running application locally.

```shell
dotnet run
```

## Run using `docker`

```shell
# build docker image
docker build -t todo-app .

# check the built image
docker images

# run docker container
docker run --name todo-app --publish "8080:80" --rm todo-app:latest

# check running container
docker ps -a
```

## Run using `docker compose`

```shell
# build and run
docker compose up --build

# cleanup
docker compose down
```

## Run in local k8s using `kubectl`

```shell
# check if kubectl is linked to local k8s
kubectl config get-contexts
kubectl config use-contexts docker-desktop

# apply service and deployment
kubectl apply -f k8s/todo-app.yaml

# check service
kubectl get service
# check deployment
kubectl get deployments
# check pods
kubectl get pods

# clean up
kubectl delete service todo-service
kubectl delete deployment todo-app 
```