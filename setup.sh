#!/usr/bin/env bash

mkdir ~/artemis

cd ~/artemis

wget https://archive.apache.org/dist/activemq/activemq-artemis/2.16.0/apache-artemis-2.16.0-bin.tar.gz

tar zxf apache-artemis-2.16.0-bin.tar.gz

ln -s apache-artemis-2.16.0 current

cat >> ~/.bashrc.d/artemis << EOF
export ARTEMIS_HOME=\$HOME/artemis/current
export PATH=\$PATH:\$ARTEMIS_HOME/bin
EOF
