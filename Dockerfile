FROM postgres

ADD ./dummy_dump.sql /docker-entrypoint-initdb.d