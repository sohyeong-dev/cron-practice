#!/bin/bash

echo "========== round start =========="

# arguments 로 option 이 입력됨
if [[ $# -gt 0 && $1 =~ ^- ]]; then
  version="$1"
  shift
fi

# version 입력하지 않은 경우
if [ -z $version ]; then
  echo -n "Please enter a version (-a, -g): "
  read version
fi

case $version in
  -g|--grep)
    version="-g"
    ;;
  -a|--awk)
    version="-a"
    ;;
  *)
    echo "Invalid args"
    exit 1
    ;;
esac

echo "selected version is $version"

# game 번호 입력 (default = 0)
if (( $# == 0 )); then 
	gameSeq=0;
else
	gameSeq="$1"
fi

echo "game sequence number is $gameSeq"

echo "========== game start =========="

source $(dirname "$0")/squid"$version".sh
