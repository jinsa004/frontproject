### MariaDB user 생성 및 권한 부여

```sql
CREATE USER 'green'@'%' IDENTIFIED BY 'green1234';
GRANT ALL PRIVILEGES ON *.* TO 'green'@'%';
CREATE database greendb;
```
