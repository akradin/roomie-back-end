# works!

TOKEN="BAhJIiU0ZWQ0YjE4NDlkMmEwMjVhNDQ5NDU5MTUyNDE1Yjk0ZgY6BkVG--ca382bad4117b23448037d700a99807fd4bd0ee8"

curl --include --request POST http://localhost:4741/chores \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "chore": {
      "name": "scoop",
      "due_date": "2016-11-30",
      "difficulty": 5,
      "completed": "false"
    }
  }'

  curl --include --request POST https://safe-brushlands-64300.herokuapp.com/chores \
    --header "Content-Type: application/json" \
    --data '{
      "chore": {
        "name": "rake",
        "due_date": "2016-11-30",
        "difficulty": 5
      }
    }'
