VERSION = 8u102b14
PROJECT = oracle-jre
REPOSITORY = apacheimages/${PROJECT}

all:
	docker build -t ${REPOSITORY}:${VERSION} .
	docker build -t ${REPOSITORY} .
	docker push ${REPOSITORY}:${VERSION}
	docker push ${REPOSITORY}
  

