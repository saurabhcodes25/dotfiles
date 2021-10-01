#!/bin/bash

cpu=$(sensors | grep CPUTIN | tr -s " " "X" | cut -d "X" -f 2 | tr -d "+" | tr -d "C");
gpu=$(sensors | grep temp1 | tr -s " " "X" | cut -d "X" -f 2 | tr -d "+" | tr -d "C");


echo -e " c:$cpu g:$gpu";
