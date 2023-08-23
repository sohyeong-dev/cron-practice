#!/bin/bash

# echo $#

if (( $# == 0 )); then 
	i=0;
else
	i="$1"
fi

# echo $i

source ~/cron_ex/scripts/squid.sh
