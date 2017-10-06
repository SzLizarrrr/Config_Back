#!/bin/bash
cd /opt/

echo "########### jdk1.8_144 download #############"
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz"

# tar xzf /vagrant_data/jdk-8u144-linux-x64.tar.gz -C .
echo "########### jdk1.8_144 untar #############"
tar xzf jdk-8u144-linux-x64.tar.gz

echo "########### into jdk folder #############"
cd /opt/jdk1.8.0_144/

echo "########### install with alternatives #############"
alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 2
alternatives --config java 4
alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_144/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_144/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_144/bin/jar
alternatives --set javac /opt/jdk1.8.0_144/bin/javac

echo "########### Setup environment #############"
echo "export JAVA_HOME=/opt/jdk1.8.0_144" >> /home/vagrant/.bash_profile
source /home/vagrant/.bash_profile

cd /opt

echo "########### maven 3.5 download #############"
wget http://www-eu.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz

echo "########### maven 3.5 install #############"
tar xzf apache-maven-3.5.0-bin.tar.gz
ln -s apache-maven-3.5.0  maven

echo "########### jdk and maven clean up ############"
rm -f /opt/apache-maven-3.5.0-bin.tar.gz /opt/jdk-8u144-linux-x64.tar.gz

echo "########### add path ###########"
cp /vagrant/maven.sh /etc/profile.d/
