#!/bin/bash

# Export PATH
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Identify system
system=`cat /etc/issue | awk -F' ' '{ print $1 }' | awk 'NF > 0' | awk '!/Kernel/'`

if [ "$system" == "Debian" ] || [ "$system" == "Ubuntu" ]
then
	sed -i 's/JAVA_ARGS="-Djava.awt.headless=true"/JAVA_ARGS="-Djava.awt.headless=true -Dhudson.DNSMultiCast.disabled=true"/' /etc/default/jenkins
		elif [ "$system" == "CentOS" ]
		then
		sed -i 's/JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true"/JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true -Dhudson.DNSMultiCast.disabled=true"/' /etc/sysconfig/jenkins
fi
