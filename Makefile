NAME=fun-with-gin

run:
	go run cmd/server/main.go

dk-run:
	docker build -t $(NAME) .
	docker run -p 8080:8080 -d --name $(NAME) $(NAME)

dk-kill:
	docker kill $(NAME)
	docker rm $(NAME)