#!/bin/bash
cd /opt/

echo "########### jdk1.8_151 download #############"
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.rpm

# echo "########### jdk1.8_151 untar #############"
# tar xzf jdk-8u151-linux-x64.tar.gz

# echo "########### into jdk folder #############"
# cd /opt/jdk1.8.0_151/

echo "########### install java ##########"
yum localinstall jdk-8u151-linux-x64.rpm -y

# echo "########### install with alternatives #############"
# alternatives --install /usr/bin/java java /opt/jdk1.8.0_151/bin/java 2
# alternatives --config java 4
# alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_151/bin/jar 2
# alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_151/bin/javac 2
# alternatives --set jar /opt/jdk1.8.0_151/bin/jar
# alternatives --set javac /opt/jdk1.8.0_151/bin/javac

# echo "########### Setup environment #############"
# echo "export JAVA_HOME=/opt/jdk1.8.0_151" >> /home/vagrant/.bash_profile
# source /home/vagrant/.bash_profile

cd /opt

echo "########### maven 3.5 download #############"
wget http://apache.mesi.com.ar/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz

echo "########### maven 3.5 install #############"
tar xzf apache-maven-3.5.2-bin.tar.gz
ln -s apache-maven-3.5.2  maven

echo "########### maven 3.5 env #############"
# echo "export M2_HOME=/opt/maven" >> /etc/profile.d/maven.sh
# echo "export PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/maven.sh

rm -f /opt/apache-maven-3.5.2-bin.tar.gz /opt/jdk-8u151-linux-x64.rpm
cp /vagrant/maven.sh /etc/profile.d/
