### How to use
```console
# Start envoy
$ docker-compose up -d

# Open new terminal to start file upload service
$ go run main.go

# Open new terminal to upload file
$ ./verify.sh 209715200 # 209715200 ~ 200 MB is the size of test file
```