alias __help='
    function _h() {
        if [ "$1" == "-h" ] ; then
            echo -e "$2\n" "$3"
            return
        fi
    }
    _h $1 $FUNCNAME'

function x()
{
    __help "Tells you how to use the x function if you call x -h"
}
