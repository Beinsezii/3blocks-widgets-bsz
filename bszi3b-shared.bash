COLOR_HI=${COLOR_HI:-"#aa652c"}
COLOR_LO=${COLOR_LO:-"#0085c0"}
COLOR_ALT=${COLOR_ALT:-"#5c8225"}
COLOR_ERR=${COLOR_ERR:-"#c14e79"}

PREFIX=${PREFIX:-""}
SUFFIX=${SUFFIX:-""}
PREFIX_SHORT=${PREFIX_SHORT:-"$PREFIX"}
SUFFIX_SHORT=${SUFFIX_SHORT:-"$SUFFIX"}

LONG=""
SHORT=""
COLOR=""

# $1 Message
function i3berr {
    echo $1
    echo $1
    echo $COLOR_ERR
    exit 1
}

# $1 test
# $2 text
function assertvar {
    [ -z "$1" ] && i3berr "No \$$2 provided!"
}

function i3bprint {

    assertvar "$LONG" LONG

    echo $PREFIX$LONG$SUFFIX

    [ -z "$SHORT" ] && SHORT="$LONG"

    echo $PREFIX_SHORT$SHORT$SUFFIX_SHORT

    [ -n "$COLOR" ] && echo $COLOR

}
