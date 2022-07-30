#!/bin/bash

hola=1

function info_api (){
      curl https://api.exchangerate.host/latest -s | jq | grep "USD" | awk '{print $2}'
}

echo $(info_api)

echo $hola