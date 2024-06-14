#!/bin/bash

flask_url='http://127.0.0.1:5000'

joke=$(curl -s $flask_url/ | jq -r '.joke')

word_count=$(echo $joke | wc -w)

echo "Number of words: $word_count"

