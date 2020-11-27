/etc/init.d/postgresql start
psql --command "CREATE USER ${USER} WITH SUPERUSER PASSWORD '${PASS}';"
createdb -O pguser ${BBDD}
/etc/init.d/postgresql stop
exec /usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main -c config_file=/etc/postgresql/9.3/main/postgresql.conf
