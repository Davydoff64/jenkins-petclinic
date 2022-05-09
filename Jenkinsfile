pipeline {
    agent any
    stages { 
        stage('Clone Rpository') {
            steps {      
                    sh('git clone https://github.com/Davydoff64/Test-mysql-petclinic.git')
                }
            }    
        }
        stage('Deployment App') {
            steps {
                sh('mvn clean package ./Test-mysql-petclinic')
            }
        }
        stage('Launch App') {
            steps {            
                sh('docker-compose up -d ./Test-mysql-petclinic') 
            }
        }
    }
}
