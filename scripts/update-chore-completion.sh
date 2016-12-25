TOKEN="BAhJIiU0ZWQ0YjE4NDlkMmEwMjVhNDQ5NDU5MTUyNDE1Yjk0ZgY6BkVG--ca382bad4117b23448037d700a99807fd4bd0ee8"

curl --include --request PATCH http://localhost:4741/chores/120 \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "chore": {
      "completed": "true"
    }
  }'
