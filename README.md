```
export TAG=voylovbogdan/lab3:$(git rev-parse --short=12 HEAD)
docker build . -t $TAG
docker push $TAG
docker run --cpus 1 -m 512m -p 80:80 $TAG
```
