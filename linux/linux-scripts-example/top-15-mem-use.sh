#! /bin/bash

ps -e -o pid,%mem,command --sort=-%mem | head -n 16 > "mem_eaters.txt"

