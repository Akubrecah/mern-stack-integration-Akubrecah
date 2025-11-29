#!/bin/bash

echo "Testing MERN Blog API..."
echo "-----------------------------------"

# Base URL
API_URL="http://localhost:5000/api"

echo "1. Getting all categories..."
curl -s "$API_URL/categories" | python3 -m json.tool
echo -e "\n-----------------------------------"

echo "2. Getting all posts..."
# Capture the first post ID for later use
POSTS=$(curl -s "$API_URL/posts")
FIRST_POST_ID=$(echo $POSTS | grep -o '"_id": *"[^"]*"' | head -1 | awk -F'"' '{print $4}')
echo $POSTS | python3 -m json.tool
echo -e "\n-----------------------------------"

if [ -n "$FIRST_POST_ID" ]; then
  echo "3. Getting single post (ID: $FIRST_POST_ID)..."
  curl -s "$API_URL/posts/$FIRST_POST_ID" | python3 -m json.tool
  echo -e "\n-----------------------------------"
else
  echo "No posts found to fetch single post."
fi

echo "4. Creating a new test post..."
NEW_POST_RESPONSE=$(curl -s -X POST "$API_URL/posts" \
  -H "Content-Type: application/json" \
  -d '{"title": "Curl Test Post", "content": "This post was created via curl script.", "categoryName": "Technology"}')
echo $NEW_POST_RESPONSE | python3 -m json.tool
NEW_POST_ID=$(echo $NEW_POST_RESPONSE | grep -o '"_id": *"[^"]*"' | head -1 | awk -F'"' '{print $4}')
echo -e "\n-----------------------------------"

if [ -n "$NEW_POST_ID" ]; then
  echo "5. Deleting the test post (ID: $NEW_POST_ID)..."
  curl -s -X DELETE "$API_URL/posts/$NEW_POST_ID" | python3 -m json.tool
  echo -e "\n-----------------------------------"
fi

echo "API Testing Complete."
