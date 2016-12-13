#!/bin/bash

{
echo "**** CPU1" 
sysbench --test=cpu --cpu-max-prime=10000 --num-threads=1 run  --json-file=cpu1.json

echo "**** CPU2" 
sysbench --test=cpu --cpu-max-prime=10000 --num-threads=2 run --json-file=cpu2.json

echo "**** CPU4" 
sysbench --test=cpu --cpu-max-prime=10000 --num-threads=4 run  --json-file=cpu4.json

echo "**** OLTP1" 
sysbench --test=oltp --oltp-table-size=1000000 --mysql-db=test --mysql-user=root --mysql-password=test --num-threads=1 --max-time=60 run  --json-file=oltp1.json

echo "**** OLTP4" 
sysbench --test=oltp --oltp-table-size=1000000 --mysql-db=test --mysql-user=root --mysql-password=test --num-threads=4 --max-time=60 run  --json-file=oltp4.json

echo "**** OLTP8" 
sysbench --test=oltp --oltp-table-size=1000000 --mysql-db=test --mysql-user=root --mysql-password=test --num-threads=8 --max-time=60 run  --json-file=oltp8.json

echo "**** RNDRW - random read/write"
sysbench --test=fileio --file-total-size=6G --file-test-mode=rndrw --max-time=300 run --json-file=rndrw.json

echo "**** RNDWR - random write"
sysbench --test=fileio --file-total-size=6G --file-test-mode=rndwr --max-time=300 run --json-file=rndwr.json

echo "**** SEQWR - sequential write" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=seqwr --max-time=300 run  --json-file=seqwr.json

echo "**** SEQRD - sequential read" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=seqrd --max-time=300 run  --json-file=seqrd.json

echo "**** RNDRD - random read" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=rndrd --max-time=300 run  --json-file=rndrd.json

echo "**** SEQREWR - sequential rewrite" 
sysbench --test=fileio --file-total-size=6G --file-test-mode=seqrewr --max-time=300 run  --json-file=seqrewr.json

echo "**** MEMORY 100M" 
sysbench --test=memory run  --json-file=memory.json

echo "**** SPEEDTEST DEFAULT"
speedtest-cli

# SpeedTest Locations

# Argentina
#  900) Telecentro (Buenos Aires, Argentina) [11156.20 km]
speedtest-cli --server 900 --json >> speedtest900.json

# Austria
# 1738) www.drei.at (Vienna, Austria) [8571.38 km]
speedtest-cli --server 1738 --json >> speedtest1738.json

# Brazil
#  3068) TIM Brasil (Sao Paulo, Brazil) [10920.56 km]
speedtest-cli --server 3068 --json >> speedtest3068.json 

# China 
# 3633) China Telecom (Shanghai, China) [9167.07 km]
speedtest-cli --server 3633 --json >> speedtest3633.json 

# France
# 9192) Silverblades.fr (Paris, France) [7972.84 km]
speedtest-cli --server 9192 --json >> speedtest9192.json 

# Germany
# 1475) IPB (Berlin, Germany) [8049.48 km]
speedtest-cli --server 1475 --json >> speedtest1475.json 
# 2398) Studio Funk GmbH & Co. KG (Hamburg, Germany) [7833.78 km]
speedtest-cli --server 2398 --json >> speedtest2398.json 

# Hong Kong
# 1536) STC (Hong Kong, China) [10397.15 km]
speedtest-cli --server 1536 --json >> speedtest1536.json 

# India
# 1718) Vodafone India (Mumbai, India) [12404.46 km]
speedtest-cli --server 1718 --json >> speedtest1718.json 

# Japan
# 7510) ASEINet (Tokyo, Japan) [7686.34 km]
speedtest-cli --server 7510 --json >> speedtest7510.json

# Russia
# 3170) Comstar-r (Nizhny Novgorod, Russian Federation) [8322.08 km]
speedtest-cli --server 3170 --json >> speedtest3170.json 

# Spain
# 3863) Orange (Madrid, Spain) [8449.11 km]
speedtest-cli --server 3863 --json >> speedtest3863.json 

# South Korea
# 6527) kdatacenter.com (Seoul, South Korea) [8297.88 km]
speedtest-cli --server 6527 --json >> speedtest6527.json 

# United Kingdom

# 2789) Vodafone UK (London, Great Britain) [7632.74 km]
speedtest-cli --server 2789 --json >> speedtest2789.json 
# 1531) Cloud Space UK (Canterbury, Great Britain) [7704.11 km]
speedtest-cli --server 1531 --json >> speedtest1531.json 



# United States

# 3165) Georgia Institute of Technology (Atlanta, GA, United States) [3494.75 km]
speedtest-cli --server 3165 --json >> speedtest3165.json

# 10386) Speedtest.net (Dallas, TX, United States) [2711.58 km]
speedtest-cli --server 10386 --json >> speedtest10386.json

# 10392) Speedtest.net (Los Angeles, CA, United States) [1601.78 km]
speedtest-cli --server 10392 --json >> speedtest10392.json

# 2947) Atlantic Metro (New York City, NY, United States) [3833.63 km]
speedtest-cli --server 2947 --json >> speedtest2947.json

# 7519) Quonix, Inc. (Philadelphia, PA, United States) [3789.44 km]
speedtest-cli --server 7519 --json >> speedtest7519.json

#  603) Unwired (San Francisco, CA, United States) [1157.58 km]
speedtest-cli --server 603 --json >> speedtest603.json

# 1776) Comcast (Chicago, IL, United States) [2762.90 km]
speedtest-cli --server 1776 --json >> speedtest1776.json  


} >> result
