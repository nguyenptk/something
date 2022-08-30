#!/bin/bash

SIZE=$1
FILE_NAME=test.img

dd if=/dev/zero of=$FILE_NAME bs=1 count=0 seek=$SIZE

FILE_PATH=$PWD/$FILE_NAME
FORM="myFile=@"$FILE_PATH""
echo $FORM
curl -i -X POST "http://localhost:8080/v1/upload" \
    --header "Content-Type: multipart/form-data" \
    --form "$FORM"

rm $FILE_NAME
rm -rf temp-images/*