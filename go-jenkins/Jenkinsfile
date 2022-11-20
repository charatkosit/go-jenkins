pipeline {
    agent {
        label 'master'
    }
    environment {
        tokenLineF = 'KU7zIs892MzQrur12rZSsEQCxGyDtHFEWDQiyir87zv'

    }
    stages {
        
         stage('prepare') {
            steps {
                echo 'prepare build'
                git branch: 'main', url: 'https://github.com/charatkosit/go-jenkins.git'
                sh 'curl -X POST -H "Authorization: Bearer ${tokenLineF}" -F "message=Jenkins script prepared" https://notify-api.line.me/api/notify'
            }
        }
        
        stage('Deploy Jenkins Script') {
            steps {
                echo 'deploy jenkins script'
                // sh '. /home/ec2-user/script/front/build-front-uat.sh'
                sh 'curl -X POST -H "Authorization: Bearer ${tokenLineF}" -F "message=Jenkins script Updated" https://notify-api.line.me/api/notify'
               
                
                
            }
        }

    }
}