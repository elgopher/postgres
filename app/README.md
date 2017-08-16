+ creates app database and users: app, app_admin, app_operator
+ To avoid granting privileges for every created object by app_admin user following DCL can be run in the very first sql in Liquibase/Flyway migration:
```postgres-sql
ALTER DEFAULT PRIVILEGES GRANT ALL ON TABLES TO app;
ALTER DEFAULT PRIVILEGES GRANT ALL ON SEQUENCES TO app;
ALTER DEFAULT PRIVILEGES GRANT ALL ON FUNCTIONS TO app;
ALTER DEFAULT PRIVILEGES GRANT ALL ON TYPES TO app;

ALTER DEFAULT PRIVILEGES GRANT SELECT ON TABLES TO app_operator;
ALTER DEFAULT PRIVILEGES GRANT SELECT ON SEQUENCES TO app_operator;
```
+ install uuid-ossp extension for UUID generation
