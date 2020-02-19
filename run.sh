#!/usr/bin/env sh

# turn on bash's job control
set -m

# source .env if exist
if [ -f /mnt/locust/.env ]; then
   source /mnt/locust/.env
fi

# Start the primary process and put it in the background
./docker_start.sh &

# Start the helper process
/go/bin/locust_exporter

# the my_helper_process might need to know how to wait on the
# primary process to start before it does its work and returns


# now we bring the primary process back into the foreground
# and leave it there
fg %1
