#/bin/sh

sudo pip3 install flask flask-sqlalchemy mysqlclient flask-migrate flask-wtf flask-login

sudo service mysql start
mysql -uroot <jobplus.sql

export FLASK_APP=manage.py
export FLASK_DEBUG=1

flask db init 
flask db migrate -m "init database"
flask db upgrade


