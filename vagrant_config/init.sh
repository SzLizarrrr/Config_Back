#!/bin/bash

command -v vim >/dev/null 2>&1 || { echo >&2 "########## Vim Install ##########"; sudo yum install -y vim; }

command -v tree >/dev/null 2>&1 || { echo >&2 "########## Tree Install ##########"; sudo yum install -y tree; }

command -v telnet >/dev/null 2>&1 || { echo >&2 "########## Telnet Install ##########"; sudo yum install -y telnet; }

command -v git >/dev/null 2>&1 || { echo >&2 "########## Git Install ##########"; sudo yum install -y git; }

command -v wget >/dev/null 2>&1 || { echo >&2 "########## Wget Install ##########"; sudo yum install -y wget; }

sudo python /vagrant/get-pip.py
sudo pip install -U mycli
