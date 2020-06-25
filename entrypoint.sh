#!/usr/bin/env bash

#
# Loads settings, then starts trading
#

strategies=$(wget -q -O - http://vault.in.okinta.ge:7020/api/kv/strategies)
tickers=$(wget -q -O - http://vault.in.okinta.ge:7020/api/kv/tickers)

if [ "$1" = "autotrade" ]; then
    exec runner \
        --strategies "$strategies" \
        --tickers "$tickers" \
        --iqhost "iqfeed.in.okinta.ge" \
        --ibhost "ibpaper.in.okinta.ge" \
        --ibport 7000
else
    exec "$@"
fi
