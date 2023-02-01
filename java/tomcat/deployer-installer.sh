
echo 'export PATH=~/bin/:$PATH' | tee -a  ~/.profile > /dev/null
export PATH=~/bin/:$PATH

chmod 755 deployer.sh
cp deployer.sh ~/bin/deployer