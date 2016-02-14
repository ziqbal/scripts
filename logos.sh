#
# Crazy! My Own Editor! In PHP!
# Well there is an itch I gotta scratch...
# Parameter 1 = filename
#

INTERPRETER="/usr/bin/php"
#INTERPRETER="/Applications/XAMPP/bin/php"

STARTDIR=$(pwd)
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILENAME=$(basename "${BASH_SOURCE[0]}")
EXTENSION="${FILENAME##*.}"
FNAME="${FILENAME%.*}"

cd $SCRIPTDIR

$INTERPRETER $FNAME.php $STARTDIR "$@"

