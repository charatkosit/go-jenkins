#!/bin/bash
cd /var/lib/jenkins/workspace/go-back-prod/src/environments/
rm -rf environment.ts
cp environment.prod.ts environment.ts
cd /home/ec2-user

#debug
cat /var/lib/jenkins/workspace/go-back-prod/src/environments/environment.ts