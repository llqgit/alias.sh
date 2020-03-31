#!/usr/bin/env sh

jump=false
while read line; do
    while read row; do
        if [[ $line == $row ]]; then
            jump=true
            break
        else
            echo $line"----"$row
        fi
    done <./zshrc.sh
    if [ $jump == true ]; then
        echo "---- pass ----"$line
        jump=false
        continue
    fi
    echo -E "$line"
    echo -E "$line" >>./zshrc.sh
done <alias.sh
echo "outer:"$a
