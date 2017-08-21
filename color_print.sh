OFF=0
BOLD=1
UNDERSCORE=4
BLINK=5
REVERSE=7
CONCEALED=8

FG=3
BG=4
BLACK=0
RED=1
GREEN=2
YELLOW=3
BLUE=4
MAGENTA=5
CYAN=6
WHITE=7

function chcolor()
{
    echo -e "\033[${1}m"
}

chcolor "$OFF;$FG$CYAN"
echo "Hello world !"
chcolor "$OFF"
