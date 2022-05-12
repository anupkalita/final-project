pipeline{
    agent any

    stages{
        stage ('build sql image') {
            steps{
                sh "docker rm -f sql_container || true"
                sh "docker rmi mysql_image || true"
                sh "docker build -t mysql_image ./mysqldb"
            }
        }

        stage ('build php image') {
            steps{
                sh "docker rm -f php_container || true"
                sh "docker rmi php_image || true"
                sh "docker build -t php_image --no-cache ./webapp"
            }
        }

        stage ('create docker network') {
            steps{
                sh "docker network create my_network || true" 
            }
        }

        stage ('run sql container') {
            steps{ 
                sh "docker run --name sql_container -d -p 3306:3306 --network my_network mysql_image"
            }
        }

        stage ('run php container') {
            steps{ 
                sh "docker run --name php_container -d -p 81:80 --network my_network php_image"
            }
        }
        }
}