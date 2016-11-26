# update curl request --works!!

curl --include --request PATCH http://localhost:4741/chores/2 \
  --header "Content-Type: application/json" \
  --data '{
    "chore": {
      "name": "dishes",
      "due_date": "2016-12-02",
      "difficulty": 2,
      "assigned_to": "john"
    }
  }'
