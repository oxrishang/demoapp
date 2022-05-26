
  
#!/bin/bash
DATABASE="mysql"

if [ "$DATABASE" == "mysql" ]
then

  echo "Waiting for Mysql..."

  while ! nc -z $MYSQL_HOST $MYSQL_PORT; do
    sleep 1
  done

  echo "Mysql started"
  python "test.sh"
fi

exec "$@"
