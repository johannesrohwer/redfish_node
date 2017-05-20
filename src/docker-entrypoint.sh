#!/bin/bash
# Start avahi-daemon
service dbus start
avahi-daemon --no-rlimits -D

# Register service; an arbitary amount of TXT fields (such as version) can be appended.
avahi-publish-service redfish _http._tcp $SERVER_PORT "redfish description" version=1.0 &

# Start nodeJS
npm start
