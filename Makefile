DOCKER = docker
OPENVPN = dcos-cli-vpn
VERSION = v0.0.0

all: build push

build:
	${DOCKER} build -t ${REPO}/${OPENVPN}:${VERSION} .

push:
	${DOCKER} push ${REPO}/${OPENVPN}:${VERSION}

# Include all .mk files so you can have your own local configurations
include $(wildcard *.mk)
