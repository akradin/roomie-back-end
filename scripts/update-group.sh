  # does not work :/

  curl --include --request PATCH http://localhost:4741/groups/4 \
    --header "Content-Type: application/json" \
    --data '{
      "group": {
        "name": "15 Copenger, unit 1"
      }
    }'
