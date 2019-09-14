# 终端颜色预览脚本

- 方法A

```bash
msgcat --color=test
```

- 方法B

```bash
echo -e "\033[0mNC (No color)"
echo -e "\033[1;37mWHITE\t\033[0;30mBLACK"
echo -e "\033[0;34mBLUE\t\033[1;34mLIGHT_BLUE"
echo -e "\033[0;32mGREEN\t\033[1;32mLIGHT_GREEN"
echo -e "\033[0;36mCYAN\t\033[1;36mLIGHT_CYAN"
echo -e "\033[0;31mRED\t\033[1;31mLIGHT_RED"
echo -e "\033[0;35mPURPLE\t\033[1;35mLIGHT_PURPLE"
echo -e "\033[0;33mYELLOW\t\033[1;33mLIGHT_YELLOW"
echo -e "\033[1;30mGRAY\t\033[0;37mLIGHT_GRAY"
```

- 方法C

```bash
for x in {0..8}; do 
    for i in {30..37}; do 
        for a in {40..47}; do 
            echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
        done
        echo
    done
done
echo ""

#or

for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""
```

- 方法D

```bash
# background color
for i in {0..255}; do printf '\e[48;5;%dm%3d ' $i $i; (((i+3) % 18)) || printf '\e[0m\n'; done
# foreground color
for i in {0..255}; do printf '\e[38;5;%dm%3d ' $i $i; (((i+3) % 18)) || printf '\e[0m\n'; done
```

- 方法E

```bash
for i in {0..255} ; do
    printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
        printf "\n";
    fi
done
```

- 方法F

```bash
usage() {
	echo "show-ansi-colors <n>"
	exit 0
}

(( $# < 1 )) && usage

show_ansi_colors() {
	local colors=$1
	echo "showing $colors ansi colors:"
	for (( n=0; n < $colors; n++ )) do
		printf " [%d] $(tput setaf $n)%s$(tput sgr0)" $n "wMwMwMwMwMwMwMwMwMwMwMwMwMwMwMwMwMwMwMwMwMwMw
"
	done
	echo
}

show_ansi_colors "$@"
```

- 方法G

```bash
for COLOR in {0..255} 
do
    for STYLE in "38;5"
    do 
        TAG="\033[${STYLE};${COLOR}m"
        STR="${STYLE};${COLOR}"
        echo -ne "${TAG}${STR}${NONE}  "
    done
    echo
done
```

- 方法H

```bash
print_colors(){
  # Print column headers.
  printf "%-4s  " '' ${bgs[@]}
  echo
  # Print rows.
  for bold in ${bolds[@]}; do
    for fg in ${fgs[@]}; do
      # Print row header
      printf "%s;%s  " $bold $fg
      # Print cells.
      for bg in ${bgs[@]}; do
        # Print cell.
        printf "\e[%s;%s;%sm%s\e[0m  " $bold $fg $bg "text"
      done
      echo
    done
  done
}

# Print standard colors.
bolds=( 0 1 )
fgs=( 3{0..7} )
bgs=( 4{0..8} )
print_colors

# Print vivid colors.
bolds=( 0 ) # Bold vivid is the same as bold normal.
fgs=( 9{0..7} )
bgs=( 10{0..8} )
print_colors
```

- 方法I

```python
#!/usr/bin/env python
import sys
terse = "-t" in sys.argv[1:] or "--terse" in sys.argv[1:]
write = sys.stdout.write
for i in range(2 if terse else 10):
    for j in range(30, 38):
        for k in range(40, 48):
            if terse:
                write("\33[%d;%d;%dm%d;%d;%d\33[m " % (i, j, k, i, j, k))
            else:
                write("%d;%d;%d: \33[%d;%d;%dm Hello, World! \33[m \n" %
                      (i, j, k, i, j, k,))
        write("\n")
```
