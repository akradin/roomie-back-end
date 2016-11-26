# works!

curl --include --request POST http://localhost:4741/chores \
  --header "Content-Type: application/json" \
  --data '{
    "chore": {
      "name": "rake",
      "due_date": "2016-11-30",
      "difficulty": 5,
      "assigned_to": "ralph"
    }
  }'
