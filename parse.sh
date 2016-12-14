#!/bin/bash

cat result |grep -i "requests\|Transactions\|Operations\|Transferred\|total time:\|\*\*\*\*\|Hosted\|Download:\|Upload:"

RESULT_CPU1 = "cat cpu1.result |grep \"total time:\"| cut -f2 -d\":\"|xargs"
RESULT_CPU2 = "cat cpu2.result |grep \"total time:\"| cut -f2 -d\":\"|xargs"
RESULT_CPU4 = "cat cpu4.result |grep \"total time:\"| cut -f2 -d\":\"|xargs"

RESULT_OLTP1 = "cat more oltp1.result |grep transactions: |cut -f2 -d\"(\"|cut -f1 -d\")\"|xargs"
RESULT_OLTP4 = "cat more oltp4.result |grep transactions: |cut -f2 -d\"(\"|cut -f1 -d\")\"|xargs"
RESULT_OLTP8 = "cat more oltp8.result |grep transactions: |cut -f2 -d\"(\"|cut -f1 -d\")\"|xargs"

RESULT_RNDWR = "cat rmdwr.result|grep Requests|cut -f1 -d\"R\"|xargs"
RESULT_RNDRD = "cat rmdrd.result|grep Requests|cut -f1 -d\"R\"|xargs"
RESULT_RNDRW = "cat rmdrw.result|grep Requests|cut -f1 -d\"R\"|xargs"

RESULT_SEQRD = "cat seqrd.result |grep Read|grep Written|cut -f2 -d\"(\"|cut -f1 -d\")\"|xargs"
RESULT_SEREWR = "cat seqrewr.result |grep Read|grep Written|cut -f2 -d\"(\"|cut -f1 -d\")\"|xargs"
RESULT_SEQWR = "cat seqwr.result |grep Read|grep Written|cut -f2 -d\"(\"|cut -f1 -d\")\"|xargs"
