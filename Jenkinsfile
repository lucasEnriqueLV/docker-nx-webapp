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
		stage('git push test') {
			steps {
				sh "docker stop"
				sh "docker rm -f"
				withCredentials([
					gitUsernamePassword(credentialsId: '2cee318a-972e-4036-803b-bdc1078dfdac', gitToolName: 'Default')
				]) {
					script {
						GIT_COMMIT_MSG = sh (
							script: 'git log -p -1',
							returnStdout: true
						).trim()
						echo "${GIT_COMMIT_MSG}"
					}
					sh '''
						git add .
						git commit -m "${GIT_COMMIT_MSG}"
						git push origin test
					'''
				}
			}
		}
	}
}