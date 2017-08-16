CREATE USER app;
CREATE DATABASE app OWNER app;

\connect app

CREATE EXTENSION "uuid-ossp";
