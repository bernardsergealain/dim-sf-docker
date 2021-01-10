#!/bin/bash

printf "\n\033[0;44mChecking the existence of 'APP_ENV' variable\033[0m\n"

if [[ -z "${APP_ENV}" ]]
then
    printf "\033[0;31mVariable does not exist.\033[0m\n\n"
    exit 1;
fi

printf "\033[0;32mVariable exists.\033[0m\n\n"
