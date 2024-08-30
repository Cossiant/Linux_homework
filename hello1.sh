#!/bin/bash

#猜数游戏

number=$(shuf -i 1-10 -n 1)
echo "$number"
while true; do
    echo "请输入一个1-10之间的数字"
    read guess
    if [[ $guess -eq $number ]]; then
        echo "您猜对了！是否继续(y/n)"
        read choice
        if [[ $choice = "y" ]] || [[ $choice = "Y" ]]; then
            number=$((RANDOM % 10+1));
            echo "$number";
            continue;
        elif [[ $choice = "n" ]] || [[ $choice = "N" ]]; then
            break;
        fi
    elif [[ $guess -lt $number ]]; then
        echo "猜小了";
    else 
        echo "猜大了";
    fi
done
