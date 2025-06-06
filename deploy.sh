set -xe
docker compose up -d && docker compose exec ansible bash -c "sed -e 's/DEPLOY_IP/$1/' -e 's/DEPLOY_USER/$2/' /inventory/inventory-template.ini > /apps/inventory.ini" \
                     && docker compose exec ansible ansible-playbook  -i inventory.ini master.yml
