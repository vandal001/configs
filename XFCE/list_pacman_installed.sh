#!/bin/bash
pacman -Qq | fzf -i --multi --reverse --info=inline --prompt="Enter string > " --header="TAB key to (un)select. " --preview ' pacman -Qi {} ' --no-unicode "$( if (( $(tput cols) >= 125 )); then echo "--preview-window=right:55%:wrap"; else echo "--preview-window=bottom:60%:wrap"; fi )"
