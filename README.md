# Ansible deployment

Deploy a docker compose project on a new server using ansible.

It will install docker, git, and other required tools.

- create a docker-compose.override.yml
- override the following env variables:

```yml

services:
  ansible:
    environment:
      - "GITHUB_URL=https://github.com/nbittich/swarm.git"
      - "DEPLOY_VERSION=0.2.0"
      - "DEPLOY_PATH=/data/swarm"

```

- add your secret `env_file` into the `./sdata/secrets` folder. They will be accessible in `$DEPLOY_PATH/secrets`
- add your `docker-compose.override.yml` for your app to `./sdata`.
- run  `bash deploy.sh <SERVER_IP_ADDRESS> <USER>`
