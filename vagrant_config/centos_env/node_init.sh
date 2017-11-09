echo "########### perpare for nodejs install ##########"
yum install -y gcc-c++ make

curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -

echo "########### nodejs install ##########"
yum install nodejs -y
