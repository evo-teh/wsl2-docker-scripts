docker-compose -f "$(Split-Path -Parent $PSCommandPath)/../../compose/win/grafana/docker-compose.yml" --env-file "$(Split-Path -Parent $PSCommandPath)/grafana.env.dev" up