.PHONY: build-todolist-render-1
build-todolist-render-1:
	docker build -t todolist:render-1 \
		-f ~/project/todolist-app/Dockerfile.render-1 \
		~/project/todolist-app/

.PHONY: run-todolist-render-1
run-todolist-render-1:
	docker run -p 8080:80 \
		--name todolist-render \
		--rm \
		todolist:render-1
