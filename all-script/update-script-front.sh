!#/bin/bash
git clone https://github.com/charatkosit/go-jenkins.git temp 

#remove 
rm -rf docker-mysql-pma
rm -rf docker-script

#make dir
mkdir script

#copy new
cp /home/ec2-user/temp/all-script/aws-back-sit/script/*.* /home/ec2-user/script/

#chmod
chmod +x /home/ec2-user/script/*.*

#remove temp
rm -rf temp
