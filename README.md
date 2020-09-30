# wsl2-docker-scripts
Useful scripts for running docker containers in WSL2 under Windows 10. Avoid installing programs that are only run occasionally and introduce the clutter on the host OS. Run them with the docker instead. Use the scripts in this repository to do so.

## Information

`/compose/win/*` folder contains docker compose files with hardcoded mount volumes. If folder for volumes does not exist it will be created automatically.

`/scripts/win/*` folder contains scripts to run docker compose. Every program is seperated. You can add this folder to Environment variables and run them from command line.

## Helper scripts

Add a folder to environment variables:
```powershell
$env:Path += ";c:\scripts\win\"
```

Run the mysql database example:
```powershell
❯ mysql
Starting mysql ... done
Attaching to mysql
mysql  | 2020-09-30 10:29:03+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.21-1debian10 started.
mysql  | 2020-09-30 10:29:03+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
mysql  | 2020-09-30 10:29:03+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 8.0.21-1debian10 started.
mysql  | 2020-09-30T10:29:03.612412Z 0 [System] [MY-010116] [Server] /usr/sbin/mysqld (mysqld 8.0.21) starting as process 1
mysql  | 2020-09-30T10:29:03.617082Z 0 [Warning] [MY-010159] [Server] Setting lower_case_table_names=2 because file system for /var/lib/mysql/ is case insensitive
mysql  | 2020-09-30T10:29:03.628241Z 1 [System] [MY-013576] [InnoDB] InnoDB initialization has started.
mysql  | 2020-09-30T10:29:04.287118Z 1 [System] [MY-013577] [InnoDB] InnoDB initialization has ended.
mysql  | 2020-09-30T10:29:04.391374Z 0 [System] [MY-011323] [Server] X Plugin ready for connections. Bind-address: '::' port: 33060, socket: /var/run/mysqld/mysqlx.sock
mysql  | 2020-09-30T10:29:04.518647Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
mysql  | 2020-09-30T10:29:04.519070Z 0 [System] [MY-013602] [Server] Channel mysql_main configured to support TLS. Encrypted connections are now supported for this channel.
mysql  | 2020-09-30T10:29:04.532359Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
mysql  | 2020-09-30T10:29:04.561358Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.21'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
```


Run the nginx example (needs a nginx.conf and mime.types in mounted volume):
```powershell
❯ nginx
Starting nginx ... done
Attaching to nginx
nginx  | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
nginx  | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
nginx  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
nginx  | 10-listen-on-ipv6-by-default.sh: error: /etc/nginx/conf.d/default.conf is not a file or does not exist
nginx  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
nginx  | /docker-entrypoint.sh: Configuration complete; ready for start up
```