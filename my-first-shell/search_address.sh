#!/bin/bash
echo 郵便番号を入力してください
read zipcode
curl https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipcode | grep address | sed 's/^.*"\(.*\)".*$/\1/' | tr -d '\n'