pipeline {
	agent { dockerfile true }
	options { ansiColor('xterm') }
	
	stages {
		stage("build dependencies") {
			steps {
				sh "npm ci"
			}
		}
		stage("unit test") {
			steps {
				sh "nx run simple-app-e2e:e2e"
			}
		}
	}
}