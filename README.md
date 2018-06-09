# docker-seather
Wallet and daemon for Seather [STR] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/seather` and see the wallet starting.

```
Docker Seather wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
STR: SdeKR81LNaym9XqGzNePPGUN32XESKeNxM

Starting STR daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/seather.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

STR: SdeKR81LNaym9XqGzNePPGUN32XESKeNxM

# License
MIT, see LICENSE file