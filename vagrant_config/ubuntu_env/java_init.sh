echo "########### add oracle jdk repository #############"
add-apt-repository ppa:webupd8team/java
apt-get update

echo "########### install oracle jdk #############"
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
apt-get install oracle-java8-installer -y

# echo "########### add open jdk repository #############"
# add-apt-repository ppa:openjdk-r/ppa
# apt-get update

# echo "########### install open jdk #############"
# apt-get install openjdk-8-jdk -y

cd /opt

echo "########### maven 3.5 download #############"
wget http://apache.mesi.com.ar/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz

echo "########### maven 3.5 install #############"
tar xzf apache-maven-3.5.2-bin.tar.gz
ln -s apache-maven-3.5.2  maven

echo "########### maven 3.5 env #############"
# echo "export M2_HOME=/opt/maven" >> /etc/profile.d/maven.sh
# echo "export PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/maven.sh

rm -f /opt/apache-maven-3.5.2-bin.tar.gz 
cp /vagrant/maven.sh /etc/profile.d/