#!/bin/bash

docker run -d \
	--name=gremlin_app \
	--net=host \
	--pid=host \
	--cap-add=NET_ADMIN \
	--cap-add=SYS_BOOT \
	--cap-add=SYS_TIME \
	--cap-add=KILL \
	-e GREMLIN_TEAM_ID="${GREMLIN_TEAM_ID}" \
	-e GREMLIN_TEAM_SECRET="${GREMLIN_TEAM_SECRET}" \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v log_gremlin:/var/log/gremlin \
	-v lib_gremlin:/var/lib/gremlin \
	gremlin/gremlin daemon
