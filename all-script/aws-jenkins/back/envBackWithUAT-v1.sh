#!/bin/bash
cd /var/lib/jenkins/workspace/go-back-uat/src/environments/
rm -rf environment.ts
cp environment.uat.ts environment.ts
cd /home/ec2-user

#debug
cat /var/lib/jenkins/workspace/go-back-uat/src/environments/environment.ts