# rpa-pseudo-orchestrator

## Description
Pseudo-orchestrator for RPA tasks built with Python-based Robocorp Framework (https://sema4.ai/docs/automation).
RPA workforce environment is managed by RCC tool (https://sema4.ai/docs/automation/rcc/overview).

## Requirements
- **Linux** (tested on Debian/Ubuntu)
- **Chromium** - for web automation
- **crontab** - for cron job scheduling
- **jq** - for JSON parsing

## Self-hosted runner
- https://github.com/actions/runner
- Should be running on a Linux machine

## Secrets
- Create classic token with repo and workflow scopes and add it as a secret for actions

## Workflows
- **Orchestrator-Deploy** - test, run (in dev mode), manually approve, release and schedule the cron job
- **Orchestrator-Run** - scheduled or manual run
- **Orchestrator-Disable** - remove the cron job

## Development
- Install dependencies from requirements.txt- 
- Business logic located inside '/bot' folder
- Edit 'bot_config.json' file to change version and set cron job schedule (https://www.hostinger.com/tutorials/cron-job) 
- Build logic in 'tasks.py' file (https://sema4.ai/docs/automation)
- 'dev_tasks.py' = 'tasks.py'
