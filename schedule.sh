#!/bin/bash

create_scheduled_task() {
    local task_name="$1"
    local script_path="$2"
    local schedule="$3"
    
    (crontab -l 2>/dev/null; echo "# $task_name";  echo "$schedule $script_path") | crontab -
}

delete_scheduled_task() {
    crontab -r
}