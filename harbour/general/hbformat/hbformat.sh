#!/bin/bash


if [ ! -f $1 ];then
     echo "$1 doesn't exists"
     exit 1
fi     

/tmp/hbformat -nIndLeft=4 -nIndNext=4 -nIndCont=3 -lIndent=yes -nCaseCmd=1 -nCaseBoo=1 -nCaseFnc=-1 -nCaseDrt=2 -nCaseFnc=4 -nLineVar=1 -nLineRet=1  -cIndentKeywords="begin|test||endtest" $1
