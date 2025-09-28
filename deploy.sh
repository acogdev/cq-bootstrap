#!/bin/bash
set -e

# Only allow specific commands
case "$SSH_ORIGINAL_COMMAND" in
    "deploy")
	cd ~/traefik/cq-bootstrap
        git pull origin main
        docker compose rm -f -s cq
        docker compose up -d
        #docker image prune -f
        ;;
    "status")
        docker ps | grep cq || echo "Container not running"
        ;;
    "logs")
        docker logs cq --tail 50
        ;;
    *)
        echo "Command not allowed: $SSH_ORIGINAL_COMMAND"
        exit 1
        ;;
esac
