#!/bin/bash

joke=$(curl -s http://127.0.0.1:8080/ | jq -r '.joke')

if [ -n "$joke" ]; then
    word_count=$(echo "$joke" | wc -w)
    echo "Number of words: $word_count"
else
    echo "Failed to retrieve joke!"
fi

