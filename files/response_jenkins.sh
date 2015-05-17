#!/bin/bash

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

while [ "$response" != "302" ]; do
	response=`curl -o /dev/null --silent --head --write-out '%{http_code}\n' http://localhost:8080/cli`
done	
