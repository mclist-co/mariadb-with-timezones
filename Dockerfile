ARG MARIADB_VERSION=10.5

FROM mariadb:${MARIADB_VERSION}
RUN echo "USE mysql;" > /docker-entrypoint-initdb.d/timezones.sql && mariadb-tzinfo-to-sql /usr/share/zoneinfo >> /docker-entrypoint-initdb.d/timezones.sql
