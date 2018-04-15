#!/bin/bash
echo "Installing and configuring Java 9..."
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java9-installer oracle-java9-set-default
