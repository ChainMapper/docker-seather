#!/bin/bash
echo "Docker Seather wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
STR: SdeKR81LNaym9XqGzNePPGUN32XESKeNxM"

config="/config/seather.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.seather/seather.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.seather/wallet.dat
fi

echo "Starting STR daemon..."
seatherd
