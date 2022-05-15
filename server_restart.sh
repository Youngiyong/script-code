!#/bin/bash

echo "Start Spring Boot Application!"
CURRENT_PID=$(ps -ef | grep java | grep test-api.jar | awk '{print $2}')
echo "$CURRENT_PID"

if [ -z $CURRENT_PID ];
then
        java -jar -Dspring.profiles.active=real /opt/test-api/test-api/build/libs/test-api.jar
else
        echo "구동중"
fi
