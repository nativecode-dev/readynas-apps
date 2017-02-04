#!/bin/bash -e

HERE=$PWD

cd radarr
schroot -c R6 make -- veryclean
cd $HERE

cd sonarr
schroot -c R6 make -- veryclean
cd $HERE

cd nzbget
schroot -c R6 make -- veryclean
cd $HERE
