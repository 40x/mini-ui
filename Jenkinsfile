node {
  stage('List pods') {
    withKubeConfig(
        [
            credentialsId: JENKINS_CREDENTIALS_ID,
            caCertificate: DEV_CA_CERT,
            serverUrl: DEV_SERVER_URL
        ]
    )
    {
      sh 'kubectl get pods'
    }
  }
}