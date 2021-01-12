build:
	CGO_ENABLED=0 GOOS="linux" GOARCH="amd64" go build -o client client/client.go
	CGO_ENABLED=0 GOOS="linux" GOARCH="amd64" go build -o server server/server.go

package:
	mv client/command-line-arguments proxy_client
	mv server/command-line-arguments proxy_server

upx:
	upx proxy_client
	upx proxy_server