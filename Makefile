all: build

build:
	docker build --tag "mazebuhu/ceph-jewel-docker-cmd" .

push:
	docker push mazebuhu/ceph-jewel-docker-cmd

clean:
	docker rmi -f mazebuhu/ceph-jewel-docker-cmd > /dev/null 2>&1