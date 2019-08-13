http://localhost:8080/com.papidas/register

{
"username":"anil12345",
"password":"anil12345"
}

{
    "id": 2,
    "username": "anil12345",
    "password": "$2a$10$d0mTtyUYtR84fggSexEs3e4WZmj3nYfJs6ZFo2USUAt2vI/0XAueC",
    "enabled": true,
    "credentialsexpired": false,
    "expired": false,
    "locked": false,
    "roles": [
        {
            "id": 1,
            "code": "ROLE_USER",
            "label": "User"
        }
    ]
}


Y2xpZW50YXBwOjEyMzQ1Ng==  (base64 decode of client_id:client_secret)
 http://localhost:8080/com.papidas/oauth/token

-h 
Accept:application/json
Content-Type:application/x-www-form-urlencoded
Authorization:Basic Y2xpZW50YXBwOjEyMzQ1Ng==

-b
grant_type:password
scope:read write
client_secret:123456
client_id:clientapp
username:anil12345
password:anil12345

{
    "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicmVzdHNlcnZpY2UiXSwidXNlcl9uYW1lIjoiYW5pbDEyMzQ1Iiwic2NvcGUiOlsicmVhZCIsIndyaXRlIl0sImV4cCI6MTU2NTcyNjQwOSwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIl0sImp0aSI6ImYxNzMxNTEwLTY2ZWEtNGI1ZC04MGExLTllYzZiODFmYWU0NiIsImNsaWVudF9pZCI6ImNsaWVudGFwcCJ9.3PXg6YVd7YA1PxQSLqTndQT654Sa8UGv-gFLF3zL2T4",
    "token_type": "bearer",
    "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsicmVzdHNlcnZpY2UiXSwidXNlcl9uYW1lIjoiYW5pbDEyMzQ1Iiwic2NvcGUiOlsicmVhZCIsIndyaXRlIl0sImF0aSI6ImYxNzMxNTEwLTY2ZWEtNGI1ZC04MGExLTllYzZiODFmYWU0NiIsImV4cCI6MTU2ODI3NTIwOSwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIl0sImp0aSI6IjQ2NTE1ODJjLTlhZDgtNDliMS1hODJjLTgwZjkxZWNhN2YyMyIsImNsaWVudF9pZCI6ImNsaWVudGFwcCJ9.yUjkqclIbvwG1aLAx8q2KlL_7lE96EA3qNre0f31Ui4",
    "expires_in": 43199,
    "scope": "read write",
    "jti": "f1731510-66ea-4b5d-80a1-9ec6b81fae46"
}



INSERT INTO Role (id, code, label) VALUES (1, 'ROLE_USER', 'User');
INSERT INTO Role (id, code, label) VALUES (2, 'ROLE_ADMIN', 'Admin';
INSERT INTO Role (id, code, label) VALUES (3, 'ROLE_SYSADMIN', 'System Admin');


Hibernate: select account0_.id as id1_0_, account0_.credentialsexpired as credenti2_0_, account0_.enabled as enabled3_0_, account0_.expired as expired4_0_, account0_.locked as locked5_0_, account0_.password as password6_0_, account0_.username as username7_0_ from account account0_ where account0_.username=?
Hibernate: select role0_.id as id1_3_, role0_.code as code2_3_, role0_.label as label3_3_ from role role0_ where role0_.code=?
Hibernate: insert into account (credentialsexpired, enabled, expired, locked, password, username) values (?, ?, ?, ?, ?, ?)

2019-08-09 19:12:45.322  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : SQL Error: 1364, SQLState: HY000
2019-08-09 19:12:45.322 ERROR 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : Field 'referenceId' doesn't have a default value
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : SQL Warning Code: 1364, SQLState: HY000
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : Field 'referenceId' doesn't have a default value
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : SQL Warning Code: 1364, SQLState: HY000
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : Field 'version' doesn't have a default value
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : SQL Warning Code: 1364, SQLState: HY000
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : Field 'createdBy' doesn't have a default value
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : SQL Warning Code: 1364, SQLState: HY000
2019-08-09 19:12:45.324  WARN 6268 --- [nio-8080-exec-5] o.h.engine.jdbc.spi.SqlExceptionHelper   : Field 'createdAt' doesn't have a default value
