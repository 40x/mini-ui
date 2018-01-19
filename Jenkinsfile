node {
    stage "Code checkout"

        checkout scm

    stage "Build and push"

        sh "sh create.sh"

    stage "Deploy"

        sh "kubectl apply -f ui.k8s.yml"

}