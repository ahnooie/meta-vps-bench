#!/bin/bash

cat result.log |grep -i "requests\|Transactions\|Operations\|Transferred\|total time:\|\*\*\*\*\|Hosted\|Download:\|Upload:"

RESULT_CPU1="$(cat cpu1.result |grep "total time:"| cut -f2 -d":"|xargs)"
RESULT_CPU2="$(cat cpu2.result |grep "total time:"| cut -f2 -d":"|xargs)"
RESULT_CPU4="$(cat cpu4.result |grep "total time:"| cut -f2 -d":"|xargs)"

RESULT_OLTP1="$(cat oltp1.result |grep transactions: |cut -f2 -d"("|cut -f1 -d")"|xargs)"
RESULT_OLTP4="$(cat oltp4.result |grep transactions: |cut -f2 -d"("|cut -f1 -d")"|xargs)"
RESULT_OLTP8="$(cat oltp8.result |grep transactions: |cut -f2 -d"("|cut -f1 -d")"|xargs)"

RESULT_RNDWR="$(cat rndwr.result|grep Requests|cut -f1 -d"R"|xargs)"
RESULT_RNDRD="$(cat rndrd.result|grep Requests|cut -f1 -d"R"|xargs)"
RESULT_RNDRW="$(cat rndrw.result|grep Requests|cut -f1 -d"R"|xargs)"

RESULT_SEQRD="$(cat seqrd.result |grep Read|grep Written|cut -f2 -d"("|cut -f1 -d")"|xargs)"
RESULT_SEREWR="$(cat seqrewr.result |grep Read|grep Written|cut -f2 -d"("|cut -f1 -d")"|xargs)"
RESULT_SEQWR="$(cat seqwr.result |grep Read|grep Written|cut -f2 -d"("|cut -f1 -d")"|xargs)"

# Argentina
#  900) Telecentro (Buenos Aires, Argentina) [11156.20 km]
RESULT_DOWNLOAD_900="$(cat speedtest900.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_900="$(cat speedtest900.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_900="$(cat speedtest900.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_900="$(cat speedtest900.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# Austria
# 1738) www.drei.at (Vienna, Austria) [8571.38 km]
RESULT_DOWNLOAD_1738="$(cat speedtest1738.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_1738="$(cat speedtest1738.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_1738="$(cat speedtest1738.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_1738="$(cat speedtest1738.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# Brazil
#  3068) TIM Brasil (Sao Paulo, Brazil) [10920.56 km]
RESULT_DOWNLOAD_3068="$(cat speedtest3068.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_3068="$(cat speedtest3068.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_3068="$(cat speedtest3068.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_3068="$(cat speedtest3068.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# China 
# 3633) China Telecom (Shanghai, China) [9167.07 km]
RESULT_DOWNLOAD_3633="$(cat speedtest3633.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_3633="$(cat speedtest3633.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_3633="$(cat speedtest3633.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_3633="$(cat speedtest3633.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# France
# 9192) Silverblades.fr (Paris, France) [7972.84 km]
RESULT_DOWNLOAD_9192="$(cat speedtest9192.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_9192="$(cat speedtest9192.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_9192="$(cat speedtest9192.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_9192="$(cat speedtest9192.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# Germany
# 1475) IPB (Berlin, Germany) [8049.48 km]
RESULT_DOWNLOAD_1475="$(cat speedtest1475.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_1475="$(cat speedtest1475.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_1475="$(cat speedtest1475.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_1475="$(cat speedtest1475.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# 2398) Studio Funk GmbH & Co. KG (Hamburg, Germany) [7833.78 km]
RESULT_DOWNLOAD_2398="$(cat speedtest2398.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_2398="$(cat speedtest2398.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_2398="$(cat speedtest2398.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_2398="$(cat speedtest2398.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# Hong Kong
# 1536) STC (Hong Kong, China) [10397.15 km]
RESULT_DOWNLOAD_1536="$(cat speedtest1536.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_1536="$(cat speedtest1536.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_1536="$(cat speedtest1536.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_1536="$(cat speedtest1536.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# India
# 1718) Vodafone India (Mumbai, India) [12404.46 km]
RESULT_DOWNLOAD_1718="$(cat speedtest1718.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_1718="$(cat speedtest1718.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_1718="$(cat speedtest1718.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_1718="$(cat speedtest1718.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# Japan
# 7510) ASEINet (Tokyo, Japan) [7686.34 km]
RESULT_DOWNLOAD_7510="$(cat speedtest7510.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_7510="$(cat speedtest7510.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_7510="$(cat speedtest7510.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_7510="$(cat speedtest7510.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# Russia
# 3170) Comstar-r (Nizhny Novgorod, Russian Federation) [8322.08 km]
RESULT_DOWNLOAD_3170="$(cat speedtest3170.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_3170="$(cat speedtest3170.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_3170="$(cat speedtest3170.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_3170="$(cat speedtest3170.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# Spain
# 3863) Orange (Madrid, Spain) [8449.11 km]
RESULT_DOWNLOAD_3863="$(cat speedtest3863.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_3863="$(cat speedtest3863.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_3863="$(cat speedtest3863.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_3863="$(cat speedtest3863.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# South Korea
# 6527) kdatacenter.com (Seoul, South Korea) [8297.88 km]
RESULT_DOWNLOAD_6527="$(cat speedtest6527.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_6527="$(cat speedtest6527.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_6527="$(cat speedtest6527.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_6527="$(cat speedtest6527.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# United Kingdom

# 2789) Vodafone UK (London, Great Britain) [7632.74 km]
RESULT_DOWNLOAD_2789="$(cat speedtest2789.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_2789="$(cat speedtest2789.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_2789="$(cat speedtest2789.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_2789="$(cat speedtest2789.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# 1531) Cloud Space UK (Canterbury, Great Britain) [7704.11 km]
RESULT_DOWNLOAD_1531="$(cat speedtest1531.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_1531="$(cat speedtest1531.result | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_1531="$(cat speedtest1531.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_1531="$(cat speedtest1531.result | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"



# United States

# 3165) Georgia Institute of Technology (Atlanta, GA, United States) [3494.75 km]
RESULT_DOWNLOAD_3165="$(cat speedtest3165.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_3165="$(cat speedtest3165.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_3165="$(cat speedtest3165.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_3165="$(cat speedtest3165.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# 10386) Speedtest.net (Dallas, TX, United States) [2711.58 km]
RESULT_DOWNLOAD_10386="$(cat  speedtest10386.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_10386="$(cat  speedtest10386.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_10386="$(cat  speedtest10386.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_10386="$(cat  speedtest10386.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# 10392) Speedtest.net (Los Angeles, CA, United States) [1601.78 km]
RESULT_DOWNLOAD_10392="$(cat  speedtest10392.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_10392="$(cat  speedtest10392.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_10392="$(cat  speedtest10392.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_10392="$(cat  speedtest10392.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# 2947) Atlantic Metro (New York City, NY, United States) [3833.63 km]
RESULT_DOWNLOAD_2947="$(cat speedtest2947.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_2947="$(cat speedtest2947.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_2947="$(cat speedtest2947.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_2947="$(cat speedtest2947.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# 7519) Quonix, Inc. (Philadelphia, PA, United States) [3789.44 km]
RESULT_DOWNLOAD_7519="$(cat speedtest7519.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_7519="$(cat speedtest7519.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_7519="$(cat speedtest7519.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_7519="$(cat speedtest7519.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

#  603) Unwired (San Francisco, CA, United States) [1157.58 km]
RESULT_DOWNLOAD_603="$(cat speedtest603.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_603="$(cat speedtest603.result| grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_UPLOAD_603="$(cat speedtest603.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_603="$(cat speedtest603.result| grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"

# 1776) Comcast (Chicago, IL, United States) [2762.90 km]
RESULT_UPLOAD_1776="$(cat speedtest1776.result  | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_UPLOAD_UOM_1776="$(cat speedtest1776.result  | grep "Upload"|cut -d ":" -f 2|xargs|cut -d " " -f2)"
RESULT_DOWNLOAD_1776="$(cat speedtest1776.result  | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f1)"
RESULT_DOWNLOAD_UOM_1776="$(cat speedtest1776.result  | grep "Download"|cut -d ":" -f 2|xargs|cut -d " " -f2)"




###############

# Header Row
echo "CPU1,CPU2,CPU4,OLTP1,OLTP4,OLTP8,RNDWR,RNDRD,RNDRW,SEQRD,SEREWR,SEQWR,DOWNLOAD_900,DOWNLOAD_900_UOM,UPLOAD_900,UPLOAD_UOM_900,DOWNLOAD_1738,DOWNLOAD_UOM_1738,UPLOAD_1738,UPLOAD_UOM_1738,DOWNLOAD_3068,DOWNLOAD_UOM_3068,UPLOAD_3068,UPLOAD_UOM_3068,DOWNLOAD_3633,DOWNLOAD_UOM_3633,UPLOAD_3633,UPLOAD_UOM_3633,DOWNLOAD_9192,DOWNLOAD_UOM_9192,UPLOAD_9192,UPLOAD_UOM_9192,DOWNLOAD_1475,DOWNLOAD_UOM_1475,UPLOAD_1475,UPLOAD_UOM_1475,DOWNLOAD_2398,DOWNLOAD_UOM_2398,UPLOAD_2398,UPLOAD_UOM_2398,DOWNLOAD_1536,DOWNLOAD_UOM_1536,UPLOAD_1536,UPLOAD_UOM_1536,DOWNLOAD_1718,DOWNLOAD_UOM_1718,UPLOAD_1718,UPLOAD_UOM_1718,DOWNLOAD_7510,DOWNLOAD_UOM_7510,UPLOAD_7510,UPLOAD_UOM_7510,DOWNLOAD_3170,DOWNLOAD_UOM_3170,UPLOAD_3170,UPLOAD_UOM_3170,DOWNLOAD_3863,DOWNLOAD_UOM_3863,UPLOAD_3863,UPLOAD_UOM_3863,DOWNLOAD_6527,DOWNLOAD_UOM_6527,UPLOAD_6527,UPLOAD_UOM_6527,DOWNLOAD_2789,DOWNLOAD_UOM_2789,UPLOAD_2789,UPLOAD_UOM_2789,DOWNLOAD_1531,DOWNLOAD_UOM_1531,UPLOAD_1531,UPLOAD_UOM_1531,DOWNLOAD_3165,DOWNLOAD_UOM_3165,UPLOAD_3165,UPLOAD_UOM_3165,DOWNLOAD_10386,DOWNLOAD_UOM_10386,UPLOAD_10386,UPLOAD_UOM_10386,DOWNLOAD_10392,DOWNLOAD_UOM_10392,UPLOAD_10392,UPLOAD_UOM_10392,DOWNLOAD_2947,DOWNLOAD_UOM_2947,UPLOAD_2947,UPLOAD_UOM_2947,DOWNLOAD_7519,DOWNLOAD_UOM_7519,UPLOAD_7519,UPLOAD_UOM_7519,DOWNLOAD_603,DOWNLOAD_UOM_603,UPLOAD_603,UPLOAD_UOM_603,UPLOAD_1776,UPLOAD_UOUOM_M_1776,DOWNLOAD_1776,DOWNLOAD_UOM_1776"


echo "$RESULT_CPU1,$RESULT_CPU2,$RESULT_CPU4 ,$RESULT_OLTP1,$RESULT_OLTP4,$RESULT_OLTP8,$RESULT_RNDWR,$RESULT_RNDRD,$RESULT_RNDRW,$RESULT_SEQRD,$RESULT_SEREWR,$RESULT_SEQWR,$RESULT_DOWNLOAD_900,$RESULT_DOWNLOAD_UOM_900,$RESULT_UPLOAD_900,$RESULT_UPLOAD_UOM_900,$RESULT_DOWNLOAD_1738,$RESULT_DOWNLOAD_UOM_1738,$RESULT_UPLOAD_1738,$RESULT_UPLOAD_UOM_1738,$RESULT_DOWNLOAD_3068,$RESULT_DOWNLOAD_UOM_3068,$RESULT_UPLOAD_3068,$RESULT_UPLOAD_UOM_3068,$RESULT_DOWNLOAD_3633,$RESULT_DOWNLOAD_UOM_3633,$RESULT_UPLOAD_3633,$RESULT_UPLOAD_UOM_3633,$RESULT_DOWNLOAD_9192,$RESULT_DOWNLOAD_UOM_9192,$RESULT_UPLOAD_9192,$RESULT_UPLOAD_UOM_9192,$RESULT_DOWNLOAD_1475,$RESULT_DOWNLOAD_UOM_1475,$RESULT_UPLOAD_1475,$RESULT_UPLOAD_UOM_1475,$RESULT_DOWNLOAD_2398,$RESULT_DOWNLOAD_UOM_2398,$RESULT_UPLOAD_2398,$RESULT_UPLOAD_UOM_2398,$RESULT_DOWNLOAD_1536,$RESULT_DOWNLOAD_UOM_1536,$RESULT_UPLOAD_1536,$RESULT_UPLOAD_UOM_1536,$RESULT_DOWNLOAD_1718,$RESULT_DOWNLOAD_UOM_1718,$RESULT_UPLOAD_1718,$RESULT_UPLOAD_UOM_1718,$RESULT_DOWNLOAD_7510,$RESULT_DOWNLOAD_UOM_7510,$RESULT_UPLOAD_7510,$RESULT_UPLOAD_UOM_7510,$RESULT_DOWNLOAD_3170,$RESULT_DOWNLOAD_UOM_3170,$RESULT_UPLOAD_3170,$RESULT_UPLOAD_UOM_3170,$RESULT_DOWNLOAD_3863,$RESULT_DOWNLOAD_UOM_3863,$RESULT_UPLOAD_3863,$RESULT_UPLOAD_UOM_3863,$RESULT_DOWNLOAD_6527,$RESULT_DOWNLOAD_UOM_6527,$RESULT_UPLOAD_6527,$RESULT_UPLOAD_UOM_6527,$RESULT_DOWNLOAD_2789,$RESULT_DOWNLOAD_UOM_2789,$RESULT_UPLOAD_2789,$RESULT_UPLOAD_UOM_2789,$RESULT_DOWNLOAD_1531,$RESULT_DOWNLOAD_UOM_1531,$RESULT_UPLOAD_1531,$RESULT_UPLOAD_UOM_1531,$RESULT_DOWNLOAD_3165,$RESULT_DOWNLOAD_UOM_3165,$RESULT_UPLOAD_3165,$RESULT_UPLOAD_UOM_3165,$RESULT_DOWNLOAD_10386,$RESULT_DOWNLOAD_UOM_10386,$RESULT_UPLOAD_10386,$RESULT_UPLOAD_UOM_10386,$RESULT_DOWNLOAD_10392,$RESULT_DOWNLOAD_UOM_10392,$RESULT_UPLOAD_10392,$RESULT_UPLOAD_UOM_10392,$RESULT_DOWNLOAD_2947,$RESULT_DOWNLOAD_UOM_2947,$RESULT_UPLOAD_2947,$RESULT_UPLOAD_UOM_2947,$RESULT_DOWNLOAD_7519,$RESULT_DOWNLOAD_UOM_7519,$RESULT_UPLOAD_7519,$RESULT_UPLOAD_UOM_7519,$RESULT_DOWNLOAD_603,$RESULT_DOWNLOAD_UOM_603,$RESULT_UPLOAD_603,$RESULT_UPLOAD_UOM_603,$RESULT_UPLOAD_1776,$RESULT_UPLOAD_UOM_1776,$RESULT_DOWNLOAD_1776,$RESULT_DOWNLOAD_UOM_1776"