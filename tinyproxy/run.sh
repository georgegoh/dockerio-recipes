#!/bin/bash

usage ()
{
  echo "Run with root permissions and supply the target port you want to expose to."
  echo
  echo "  Examples: "
  echo "    $0" "<port>"
  echo "    sudo" "$0" "<port>"
  echo
}

port=$1

if test -z "$port"
then
  usage
  exit 1
fi

if [[ ! "$port" =~ ^[0-9]+$ ]] || [ "$port" -gt "65535" ] || [ "$port" -lt "1024" ]  
then
  echo "Please use a port number between 1024-65535"
  echo
  exit 1
fi

echo "$port"
docker run -p "$port":3128 -d tinyproxy
