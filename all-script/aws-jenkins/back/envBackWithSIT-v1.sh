#!/bin/bash
cd /var/lib/jenkins/workspace/go-back-sit/src/environments/
rm -rf environment.ts
cp environment.sit.ts environment.ts
cd /home/ec2-user

#debug
cat /var/lib/jenkins/workspace/go-back-sit/src/environments/environment.ts