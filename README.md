# redfish_node
  refish_node offers a nodeJS server that advertises itself via mDNS in the local network.
## Build + Run
 In order to use the package you need docker installed on your machine. To build and start the container simply run

```
$> sudo make start_x64 SERVER_PORT=4000
```
or
```
$> sudo make start_armhf SERVER_PORT=4000
``` 
depending on your current architecture.

## Settings
- The advertised name and port can be changed in the `/src/docker-entrypoint.sh` file.

## Known Limitations
  - The current implementation needs access to the host network when the container is started (e.g. `--network=host`)
  in order to access the underlying network interface of the host.
  - The current version does not support mDNS for multiple containers on a single host.