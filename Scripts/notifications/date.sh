bold=$(tput bold)
normal=$(tput sgr0)

notify-send "Hello, Bran!" "${bold}Time is:${normal} `date +%H:%M:%S` \n ${bold}Today is:${normal} `date +%A` `date +%d`th `date +%B`"
