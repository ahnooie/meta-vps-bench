#!/bin/bash

{
echo "**** CPU1" 
sysbench --test=cpu --cpu-max-prime=100000 --num-threads=1 run 

echo "**** CPU2" 
sysbench --test=cpu --cpu-max-prime=100000 --num-threads=2 run 

echo "**** CPU4" 
sysbench --test=cpu --cpu-max-prime=100000 --num-threads=4 run 

echo "**** OLTP1" 
sysbench --test=oltp --oltp-table-size=1000000 --mysql-db=test --mysql-user=root --mysql-password=test --num-threads=1 --max-time=60 run 

echo "**** OLTP4" 
sysbench --test=oltp --oltp-table-size=1000000 --mysql-db=test --mysql-user=root --mysql-password=test --num-threads=4 --max-time=60 run 

echo "**** OLTP8" 
sysbench --test=oltp --oltp-table-size=1000000 --mysql-db=test --mysql-user=root --mysql-password=test --num-threads=8 --max-time=60 run 

echo "**** RNDRW - random read/write"
sysbench --test=fileio --file-total-size=6G --file-test-mode=rndrw --max-time=300 run

echo "**** RNDWR - random write"
sysbench --test=fileio --file-total-size=6G --file-test-mode=rndwr --max-time=300 run

echo "**** SEQWR - sequential write" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=seqwr --max-time=300 run 

echo "**** SEQRD - sequential read" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=seqrd --max-time=300 run 

echo "**** RNDRD - random read" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=rndrd --max-time=300 run 

echo "**** SEQREWR - sequential rewrite" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=seqrewr --max-time=300 run 

echo "**** MEMORY 100M" 
sysbench --test=memory --max-time=300 --memory-total-size=100M run 

echo "**** MEMORY 500M" 
sysbench --test=memory --max-time=300 --memory-total-size=500M run 

echo "**** MEMORY 1000M" 
sysbench --test=memory --max-time=300 --memory-total-size=1000M run 

echo "**** MEMORY 2000M" 
sysbench --test=memory --max-time=300 --memory-total-size=2000M run 


} >> result
