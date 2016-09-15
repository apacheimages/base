VERSION=17.0
ORGANIZATION=apacheimages
REPOSITORY=otp

all: build push
	;
	
build: Dockerfile
	docker build -t ${ORGANIZATION}/${REPOSITORY}:${VERSION} .

push:
	docker push ${ORGANIZATION}/${REPOSITORY}:${VERSION}
	git add Dockerfile
	git push origin ${VERSION}
	
shell:
	docker run --name ${REPOSITORY} -it --rm ${ORGANIZATION}/${REPOSITORY}:${VERSION} /bin/sh

run:
	docker run --name ${REPOSITORY} --rm  ${ORGANIZATION}/${REPOSITORY}:${VERSION} 
