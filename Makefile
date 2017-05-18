start_x64: build_x64
	sudo docker run --rm -d -p 5000:5000 --network=host mdns_ad_service

build_x64:
	docker build -t mdns_ad_service -f ./Dockerfile.x64 .

stop:
	docker stop $$(sudo docker ps | grep mdns_ad_service | cut -c1-16)
