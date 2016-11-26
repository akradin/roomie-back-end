# works!

curl --include --request POST http://localhost:4741/groups \
  --header "Content-Type: application/json" \
  --data '{
    "group": {
      "name": "15 Copenger"
    }
  }'
