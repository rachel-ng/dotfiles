#!/bin/bash


i=0
end=7
LOWER=({a..h})
UPPER=({A..H})
code="\033["
while [ $i -le $end ]; do
    echo -e "${code}0;$((30 + $i))m0;$((30 + $i))\t${LOWER[$i]}${code}0m\t\t${code}0;90;$((40 + $i))m 0;$((30 + $i))\t${LOWER[$i]} ${code}0m"
    echo -e "${code}0;$((90 + $i))m0;$((90 + $i))\t${UPPER[$i]}${code}0m\t\t${code}0;90;$((40 + $i))m 0;$((90 + $i))\t${UPPER[$i]} ${code}0m"
    echo 
    i=$(($i+1))
done


TPUTCOLORS=("BLACK" "RED" "GREEN" "YELLOW" "BLUE" "MAGENTA" "CYAN" "WHITE")

BOLD=`tput bold`
RESET=`tput sgr0`

echo 

for i in $(seq 0 7); do
    echo -e "`tput setaf $i`${TPUTCOLORS[$i]}\t\t0;$((30+$i))\t${LOWER[$i]}"${RESET}"\t`tput setaf $i`${BOLD}${TPUTCOLORS[$i]}\t\t0;$((90+i))\t${UPPER[$i]}"${RESET}"\t`tput setaf 0``tput setab $(($i))`${BOLD} ${TPUTCOLORS[$i]}\t\t0;$((40+$i))\t${LOWER[$i]} "${RESET}
    echo
done

echo $1 
i=0
end=${#1}
s=$1
while [[ $i -le $end ]]; do
    l=${s:$i:1}
    # echo $(($i % 2 == 1))
    if [[ $l == "A" ]]; then
        echo -en "`tput setaf 0`${BOLD}$l"${RESET}
    elif [[ $l == "B" ]]; then
        echo -en "`tput setaf 1`${BOLD}$l"${RESET}
    elif [[ $l == "C" ]]; then
        echo -en "`tput setaf 2`${BOLD}$l"${RESET}
    elif [[ $l == "D" ]]; then
        echo -en "`tput setaf 3`${BOLD}$l"${RESET}
    elif [[ $l == "E" ]]; then
        echo -en "`tput setaf 4`${BOLD}$l"${RESET}
    elif [[ $l == "F" ]]; then
        echo -en "`tput setaf 5`${BOLD}$l"${RESET}
    elif [[ $l == "G" ]]; then
        echo -en "`tput setaf 6`${BOLD}$l"${RESET}
    elif [[ $l == "H" ]]; then
        echo -en "`tput setaf 7`${BOLD}$l"${RESET}
    elif [[ $l == "a" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 1` $l"${RESET}
        else
            echo -en "`tput setaf 0`$l"${RESET}
        fi
    elif [[ $l == "b" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 1` $l"${RESET}
        else
            echo -en "`tput setaf 1`l"${RESET}
        fi
    elif [[ $l == "c" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 2` $l"${RESET}
        else
            echo -en "`tput setaf 2`$l"${RESET}
        fi
    elif [[ $l == "d" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 3` $l"${RESET}
        else
            echo -en "`tput setaf 3`$l"${RESET}
        fi
    elif [[ $l == "e" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 4` $l"${RESET}
        else
            echo -en "`tput setaf 4`$l"${RESET}
        fi
    elif [[ $l == "f" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 5` $l"${RESET}
        else
            echo -en "`tput setaf 5`$l"${RESET}
        fi
    elif [[ $l == "g" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 6` $l"${RESET}
        else
            echo -en "`tput setaf 6`$l"${RESET}
        fi
    elif [[ $l == "h" ]]; then
        if [[ $(($i % 2 == 1)) ]]; then 
            echo -en "`tput setaf 0``tput setab 7` $l"${RESET}
        else
            echo -en "`tput setaf 7`$l"${RESET}
        fi
    elif [[ $l == "x" ]]; then
        echo -en " x"
    else
        if [[ $i -le $(($end-1)) ]]; then
            echo "nani the fuck"
        fi
    fi

    if [[ $(($i % 2)) == 1 ]]; then echo
    fi
    i=$(($i+1))
done
echo
