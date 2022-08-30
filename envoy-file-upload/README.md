### How to use
```console
# Start envoy
$ docker-compose up -d

# Open new terminal to start file upload service
$ go run main.go

# Open new terminal to upload file
$ ./verify.sh 26214400 # 26214400 ~ 25 MB is the size of test file
```