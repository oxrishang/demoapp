
  
#!/bin/bash

if [ "$DATABASE" == "Mysql" ]
then

  echo "Waiting for Mysql..."

  while ! nc -z $MYSQL_HOST $MYSQL_PORT; do
    sleep 0.1
  done

  echo "Mysql started"
  python "test.sh"
fi

exec "$@"
