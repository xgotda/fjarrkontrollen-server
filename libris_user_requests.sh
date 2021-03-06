#!/bin/bash
# libris_user_requests.sh
# Låntagarbeställningar från Libris Fjärrlån
# is run by cronjob fjarrkontrollen_server_ENV_cron_script
PATH=$PATH:/usr/local/bin
. /usr/local/rvm/scripts/rvm

CURRENT_ENV=$1
DIR=$2

cd ${DIR}
rvm use 2.1.5
RAILS_ENV=${CURRENT_ENV} bundle exec rake libris_info:user_requests
