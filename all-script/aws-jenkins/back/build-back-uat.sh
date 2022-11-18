#!/bin/bash
echo "hello"
tagname=`cat /var/lib/jenkins/workspace/go-back-uat/package.json |grep "version" |cut -d'"' -f 4`
echo $tagname
sed -i -e "s/go-back-xxx/go-back-uat/g" /var/lib/jenkins/workspace/go-back-uat/docker-compose.yml
sed -i -e "s/latest/${tagname}/g" /var/lib/jenkins/workspace/go-back-uat/docker-compose.yml
cat /var/lib/jenkins/workspace/go-back-uat/docker-compose.yml

cd  /var/lib/jenkins/workspace/go-back-uat/
docker-compose build prod
cd /home/ec2-user/