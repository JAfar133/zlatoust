\set database `echo "$PG_DATABASE_NAME"`
\set user_password `echo "$PG_NEW_USER_PASSWORD"`
\set user_login `echo "$PG_NEW_USER_LOGIN"`

CREATE DATABASE :"database";
GRANT ALL PRIVILEGES ON DATABASE :"database" TO postgres;
--Create DB
\c zlatoust;
CREATE USER :"user_login" WITH PASSWORD :'user_password';
GRANT ALL PRIVILEGES ON DATABASE :"database" TO :"user_login";

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO :"user_login";
