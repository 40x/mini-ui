node {
    stage "switch to apps"

        sh "kubectl config use-context minikube"

    stage "LOG ====="

            sh "kubectl config view"

    stage "Build and push"

        sh "sh create.sh"

    stage "Deploy"

        sh "kubectl apply -f ./ui.k8s.yml"

    stage "switch back to infra"

        sh "kubectl config use-context infra"

    stage "LOG ====="

        sh "kubectl config view"

}