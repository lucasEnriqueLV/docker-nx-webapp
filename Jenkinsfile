pipeline {
	agent { dockerfile true }
	options { ansiColor('xterm') }
	stages {
		stage("build dependencies") {
			steps {
				sh "npm i"
			}
		}
		stage("unit test") {
			steps {
				sh "ng run simple-app-e2e:e2e"
			}
		}
	}
}