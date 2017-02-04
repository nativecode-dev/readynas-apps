#!/bin/bash -e

export LANGUAGE=C
export LC_ALL=C
export LANG=en_US.utf8

HERE=$PWD

cd radarr
schroot -c R6 debuild -- -uc -us -A
cd $HERE

cd sonarr
schroot -c R6 debuild -- -uc -us -A
cd $HERE

cd nzbget
schroot -c R6 debuild -- -uc -us -A
cd $HERE
