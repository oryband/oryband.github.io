.PHONY: default
.DEFAULT_GOAL: default

default: ;

stylus: build-stylus
	docker run -it --rm \
		-v $$PWD/_styl:/input \
		-v $$PWD/css:/output \
		stylus \
		--compress --out /output \
		/input

build-stylus:
	docker build -t stylus .
