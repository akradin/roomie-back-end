  # does not work :/

  curl --include --request PATCH http://localhost:4741/groups/2 \
    --header "Content-Type: application/json" \
    --data '{
      "group": {
        "name": "15 Cop, Unit 1",
      }
    }'
