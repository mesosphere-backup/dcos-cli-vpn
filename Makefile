DOCKER = docker
OPENVPN = dcos-cli-vpn

all: build push

build:
	${DOCKER} build -t ${REPO}/${OPENVPN} .

push:
	${DOCKER} push ${REPO}/${OPENVPN}

# Include all .mk files so you can have your own local configurations
include $(wildcard *.mk)
