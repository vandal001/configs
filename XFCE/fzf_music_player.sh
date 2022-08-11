#!/bin/bash

#MDIR="~/Music"

#cd "$MDIR"
pwd
cd ~/Music 
while true; do
      out=$(fzf --height=100% --exact --print-query -m)
      if [ "$out" == ":quit" ]; then
	exit 0
	
      else
	 mpv "$out"


      fi

done
#exec bash
