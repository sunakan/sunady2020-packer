.PHONY: update-gitsubmodules
update-gitsubmodules:
	git submodule update --remote

hello:
	echo hello

build:
	copy .\debian10.json .\debian\debian10.json
	copy .\http\preseed-buster.cfg .\debian\http\preseed-buster.cfg
	copy .\http\preseed.cfg .\debian\http\preseed.cfg
	cd debian && packer build -var-file=debian10.json debian.json
#	packer build -var-file=debian10.json debian.json
