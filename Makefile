start_x64: build_x64
	sudo docker run --rm -d -e SERVER_PORT=$(SERVER_PORT) --network=host mdns_ad_service

build_x64:
	docker build -t mdns_ad_service -f ./Dockerfile.x64 .

start_armhf: build_armhf
	sudo docker run --rm -d -e SERVER_PORT=$(SERVER_PORT) --network=host mdns_ad_service

build_armhf:
	docker build -t mdns_ad_service -f ./Dockerfile.armhf .


stop:
	docker stop $$(sudo docker ps | grep mdns_ad_service | cut -c1-16)
