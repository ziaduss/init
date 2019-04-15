#!/bin/bash

echo "
0	Black
1	Red
2	Green
3	Yellow
4	Blue
5	Magenta
6	Cyan
7	White
8	Not used
9	Reset to default color"

read -p "quel est votre choix :" var
tput setab $var
clear