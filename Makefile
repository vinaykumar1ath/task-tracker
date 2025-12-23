.PHONY: build-task-tracker-cloud
build-task-tracker-cloud:
	docker build -t task-tracker/task-tracker:cloud \
		-f ./Dockerfile.cloud \
		.

.PHONY: run-task-tracker-cloud
run-task-tracker-cloud:
	docker run -e PORT=80 -p 3000:80 \
		-e ENV_STRING=$$(base64 -w 0 task-tracker-backend/.env.cloud) \
		--name task-tracker-cloud \
		--rm \
		task-tracker/task-tracker:cloud

.PHONY: stop-task-tracker-cloud
stop-task-tracker-cloud:
	docker stop task-tracker-cloud
