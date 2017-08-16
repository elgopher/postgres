-- app user has access to app database and can do DML on it
CREATE USER app;
-- app_admin is a Flyway/Liquibase user creating all objects in the app database
CREATE USER app_admin;
-- app_operator is read-only user. It is a group, from which all operator roles can inherit
CREATE USER app_operator NOLOGIN;

CREATE DATABASE app OWNER app_admin;


REVOKE CREATE ON DATABASE app FROM public;
GRANT CREATE ON DATABASE app TO app_admin;

\connect app

REVOKE CREATE ON SCHEMA public FROM public;
GRANT CREATE ON SCHEMA public TO app_admin;

