VERSION = 8u144b01
PROJECT = oracle-jre-server
REPOSITORY = apacheimages/${PROJECT}

all:
	docker build -t ${REPOSITORY}:${VERSION} .
	docker build -t ${REPOSITORY} .
	docker push ${REPOSITORY}:${VERSION}
	docker push ${REPOSITORY}
  

