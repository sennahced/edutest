pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                dockerfile {
			dir './edutest/dockerfile'
		}
            }
        }
    }
}

