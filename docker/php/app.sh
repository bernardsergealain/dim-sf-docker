#!/bin/bash

printf "\n\033[0;44mPreparing the application for the \"${APP_ENV}\" environment\033[0m\n"

if [ "${APP_ENV}" == "dev" ] || [ "${APP_ENV}" == "test" ]
then
    echo "Run symfony commands for \"dev\" or \"test\" environments"
    # composer install --no-interaction
else
    echo "Run symfony commands for \"prod\" or \"stag\" environments"
    # composer install --no-interaction --no-dev --optimize-autoloader
fi

echo "Run symfony commands for all environments"

# bin/console doctrine:migrations:migrate --no-interaction
# ...

printf "\n\033[0;44mBringing the \"${APP_ENV}\" environment up\033[0m\n"
