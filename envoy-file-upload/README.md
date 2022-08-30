### How to use
```console
# Start envoy
$ docker-compose up -d

# Start file upload service
$ go run main.go

# Upload file
$ ./verify.sh 209715200 # 209715200 ~ 200 MB is the size of test file
```