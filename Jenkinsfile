pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Aishe-berra'
        STUDENT_SURNAME = 'Yeker'
        STUDENT_GROUP   = 'IT2-2309'
        STUDENT_ID      = '37162'
        IMAGE_NAME      = 'yeker-aishe-berra-devops'
        CONTAINER_NAME  = 'yeker-aishe-berra-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'git log -1 --oneline'
            }
        }
        stage('Build') {
            steps {
                sh 'python3 -m py_compile app/app.py'
                echo 'Build OK'
            }
        }
        stage('Test') {
            steps {
                sh 'test -f Yeker_Aishe-berra_info.txt'
                sh 'bash -n scripts/Yeker_Aishe-berra_system.sh'
                echo 'Tests OK'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} .'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker rm -f ${CONTAINER_NAME} || true'
                sh '''docker run -d --name ${CONTAINER_NAME} \
                  -e STUDENT_NAME=${STUDENT_NAME} \
                  -e STUDENT_SURNAME=${STUDENT_SURNAME} \
                  -e STUDENT_GROUP=${STUDENT_GROUP} \
                  -e STUDENT_ID=${STUDENT_ID} \
                  ${IMAGE_NAME}'''
                sh 'sleep 3 && docker logs ${CONTAINER_NAME}'
            }
        }
    }
}
