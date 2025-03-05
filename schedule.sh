#!/bin/bash

create_scheduled_task() {
    local task_name="$1"
    local script_path="$2"
    local schedule="$3"
    
    (crontab -l 2>/dev/null; echo "# $task_name";  echo "$schedule $script_path") | crontab -
}

# delete_scheduled_task() {
#     local task_name="$1"
#     crontab -l | grep -v "# $task_name" | crontab -
# }

# enable_scheduled_task() {
#     local task_name="$1"
#     crontab -l | sed "s/^#\([^#]*\)# $task_name$/\1# $task_name/" | crontab -
# }

# disable_scheduled_task() {
#     local task_name="$1"
#     crontab -l | sed "s/^\([^#][^#]*\)# $task_name$/#\1# $task_name/" | crontab -
# }

# run_scheduled_task() {
#     local task_name="$1"
#     local script_path=$(crontab -l | grep "# $task_name$" | awk '{print $6}')
#     if [ ! -z "$script_path" ]; then
#         bash "$script_path"
#     fi
# }