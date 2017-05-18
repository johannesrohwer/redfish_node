#!/bin/bash
# Start avahi-daemon and publishing
service dbus start
service avahi-daemon start
avahi-publish-service redfish _http._tcp 5000 "description field" &

# Start nodeJS
npm start
