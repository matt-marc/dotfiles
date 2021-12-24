#!/bin/sh

STOW_ARGS= -nV
RED='\033[0;31m'
NC='\033[0m'


pushd ./stow/
DIRS=`ls`
echo -e "Stowing all programs"
echo $DIRS

for D in $DIRS
do
        echo -e "Stowing ${RED} ${D} ${NC}"
        stow ${STOW_ARGS} ${D} -t ~
done
