all: build

IMAGE_NAME = jkutkut/docker4norminette

build:
	docker build -t ${IMAGE_NAME}:latest .
	echo "Done! Now you can run it!"

run:
	docker run -it --rm -v $(PWD):/docker ${IMAGE_NAME}:latest