# ColdFusion neocrap
Configure ColdFusion neo-xyz files using environment variables.

## Variables
* `DATASOURCES` - Space delimited List of datasources to be configured
* `DEFAULT_DSN_DATABASE` - Defaults to the name of the datasource
* `DEFAULT_DSN_DRIVER`
* `DEFAULT_DSN_HOST`
* `DEFAULT_DSN_INSTANCE`
* `DEFAULT_DSN_MAXPOOLSTATEMENTS`
* `DEFAULT_DSN_NAME` - Defaults to the name of the datasource
* `DEFAULT_DSN_PASSWORD`
* `DEFAULT_DSN_PORT`
* `DEFAULT_DSN_QUERYTIMEOUT`
* `DEFAULT_DSN_USER`

### Overrides
Each default variable can be overridden on a per datasource basis by replacing
`DEFAULT` with the uppercase version of the datasource.

## Build

    docker build -t neocrap .

## Run

    docker run --rm -it -e DATASOURCES='omc mmc' -e MMC_DSN_USER='somebodyelse' neocrap
