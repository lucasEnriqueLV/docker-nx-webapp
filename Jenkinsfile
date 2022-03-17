pipeline {
	agent { dockerfile true }
	stages {
		stage("install dependencies") {
			steps {
				dir("projects") {
					sh "npm i"
				}
            }
		}
		stage("unit test") {
			steps {
				dir("projects") {
					sh "ng run simple-app-e2e:e2e"
				}
			}
		}

		// stage("build image") {
		//   steps {
		//     sh """
		//       docker build -t simple-app .
		//     """
		//   }
		// }

		// stage("build container") {
		//   steps {
		//     sh """
		//       docker stop simple-e2e-app
		//     """
		//     sh """
		//       docker run --rm -d -t --name simple-e2e-app -v /var/run/docker.sock:/var/run/docker.sock simple-app /usr/bin/top -b
		//     """
		//     sh """
		//       docker exec -i simple-e2e-app sh
		//     """
		//     sh """
		//       npm i
		//     """
		//   }
		// }

	}
}