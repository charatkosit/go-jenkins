!#/bin/bash
git clone https://github.com/charatkosit/go-jenkins.git temp 

#remove 
rm -rf sscript

#make dir
mkdir script

#copy new
cp /home/ec2-user/temp/all-script/aws-front-prod/script/*.* /home/ec2-user/script/

#chmod
chmod +x /home/ec2-user/script/*.*

#remove temp
rm -rf temp

# ls
ls -l
ls -l script