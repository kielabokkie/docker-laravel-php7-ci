build: Dockerfile
	docker build -t kielabokkie/laravel-php7-ci:$(filter-out $@,$(MAKECMDGOALS)) -t kielabokkie/laravel-php7-ci:latest .

push:
	docker push kielabokkie/laravel-php7-ci

%:
	@:
