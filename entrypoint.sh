#!/usr/bin/env bash

#
# Loads settings, then starts trading
#

strategies=$(wget -q -O - http://vault.in.okinta.ge:7020/api/kv/strategies)
tickers=$(wget -q -O - http://vault.in.okinta.ge:7020/api/kv/tickers)
iqfeed=$(nslookup iqfeed.in.okinta.ge | awk '/^Address:/ {A=$2}; END {print A}')
ibhost=$(nslookup ibpaper.in.okinta.ge | awk '/^Address:/ {A=$2}; END {print A}')

if [ "$1" = "autotrade" ]; then
    exec runner \
        --strategies "$strategies" \
        --tickers "$tickers" \
        --iqhost "$iqhost" \
        --ibhost "$ibhost" \
        --ibport 7000
else
    exec "$@"
fi
