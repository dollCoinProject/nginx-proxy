pipeline {
  agent any
    stages {
      stage("pre-build") {
          //预处理
        steps{
          script {
            // 停止之前的项目
            sh "pwd"
            sh "docker rm -f proxy &> /dev/null || true"
          }
        }
      }

      stage('编译') {
        steps{
          script {
            sh 'pwd'
          }
        }
    }

    stage('部署') {
      steps{
        script {

        // build产物
        sh "docker build -t proxy:1.0 ."
        sh "docker run -d --name=proxy --net=host proxy:1.0"
        }
      }
    }

  }
}
