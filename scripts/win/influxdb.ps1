docker-compose -f "$(Split-Path -Parent $PSCommandPath)/../../compose/win/influxdb/docker-compose.yml" --env-file "$(Split-Path -Parent $PSCommandPath)/influxdb.env.dev" up