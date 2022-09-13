pipeline {
    
    agent any


    tools {
    jdk 'Java11'
    maven 'Maven 3.6.3'

  }

    stages {
        
        stage('Git Clone') {
            steps {
                // Get some code from a GitHub repository
               git branch: 'master',
               url: 'https://github.com/kosurumuniraja/madam.git'
            }

        }
        stage('aws') {
            steps {
                // Get some code from a GitHub repository
                sh  '''
                  cd $WORKSPACE
                  aws s3 sync . s3://muni.raja
                  '''

            }
        }
      }
     }
