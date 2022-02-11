#!/bin/bash

echo '             ___                .                               '
echo '            /|||               /|           _    ___     ///|   '
echo '           //||| ,_,    _  _  / |    ____  //,_, |_|    / / |   '
echo ' ___   ___// ||| | |__ |/||/|/| | __/ __ \//|| | |_|   / /| |   '
echo "/  _\./_  | /|||_| '_ \|/||/|_| |/ / / _\ | || |_|_|  / /_| |_  "
echo '| | |V| | |__|||_| | | |__/ __|-*-< | (_| |__  _||_|_/_/__ ___| '
echo '|_| |#| |_|  |_| |_| |_|  |_| |_|\_\ \__,_|  |_| |_|___|  |_|   '
echo '                                    \____/                      '
echo ''

echo "[+] Installing host to it's container."
docker build . -t mahakaala

# Note that kash here just gets your to the shell of a running customized kali continer.
echo ''
echo "You may not set this as alias on your shell config:"
echo "alias kash=\"docker exec -it maahakala zsh\""
exit 0
