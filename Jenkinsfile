pipeline {
    agent any
    stages { 
        stage('Clone Rpository') {
            steps {      
                    sh('git clone https://github.com/Davydoff64/Test-mysql-petclinic.git')
            }    
        }
        stage('Deployment App') {
            steps {
                sh('mvn -f ./Test-mysql-petclinic clean package')
            }
        }
        stage('Launch App') {
            steps {            
                sh('docker-compose -f .Test-mysql-petclinic/docker-compose.yml up') 
            }
        }
    }
}
