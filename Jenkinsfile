pipeline {
  agent any
  stages {
    stage('Connection test') {
      steps {
        sh '''#!/bin/bash
ping jenkins -c 2 > /dev/null
if [[ $? == 0 ]]
then
echo "Server is UP"
else
echo "Server is Down"
fi
'''
      }
    }

    stage('Server test') {
      steps {
        sh '''#!/bin/bash
sar -u -f $file | awk \'/Average:/{printf("CPU Average: %.2f%\\n"), 100 - $8}\'
sar -r -f $file | awk \'/Average:/{printf("Memory Average: %.2f%\\n"),(($3-$5-$6)/($2+$3)) * 100 }\'

'''
      }
    }

  }
}