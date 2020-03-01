gettime=`curl -s  http://api.m.taobao.com/rest/api3.do?api=mtop.common.getTimestamp`
#gettime=`echo $gettime | awk 'BEGIN {FS=","} {print $4}' | sed 's/^.*:"//g' | sed 's/"}}//g'`
gettime=`echo $gettime | cut -d ',' -f 4 | sed 's/^.*:"//g' | sed 's/"}}//g'`
unit=$((gettime/1000))
date=`date -d @${unit}`
echo $date
