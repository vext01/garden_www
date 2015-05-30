GRID2MIN="--x-grid SECOND:20:MINUTE:1:MINUTE:1:0:%X"
GRID1HOUR="--x-grid MINUTE:5:MINUTE:15:MINUTE:15:0:%X"
GRID1DAY="--x-grid HOUR:1:HOUR:5:HOUR:5:0:%H:%M"
#GRID1WEEK=""
#GRID1MONTH=""
#GRID1YEAR=""
TEMPYLABEL="--vertical-label Temp(degC)"
LIGHTYLABEL="--vertical-label Light(Percent)"
MOISTYLABEL="--vertical-label Moisture(Percent)"
WIDTH="-w 300"
TIMESPEC2MIN="--end now --start end-120s"
TIMESPEC1HOUR="--end now --start end-1h"
TIMESPEC1DAY="--end now --start end-1d"
TIMESPEC1WEEK="--end now --start end-7d"
TIMESPEC1MONTH="--end now --start end-1m"
TIMESPEC1YEAR="--end now --start end-1y"

# 2 mins
rrdtool graph ${WIDTH} ${LIGHTYLABEL} ${GRID2MIN} ${TIMESPEC2MIN} htdocs/light_2mins.png DEF:light=data/garden/light.rrd:garden_light:AVERAGE LINE2:light#ff0000
rrdtool graph ${WIDTH} ${MOISTYLABEL} ${GRID2MIN} ${TIMESPEC2MIN} htdocs/moist_2mins.png DEF:moist=data/garden/moist.rrd:garden_moist:AVERAGE LINE2:moist#00ff00
rrdtool graph ${WIDTH} ${TEMPYLABEL} ${GRID2MIN} ${TIMESPEC2MIN} htdocs/temp_2mins.png DEF:temp=data/garden/temp.rrd:garden_temp:AVERAGE LINE2:temp#0000ff

# 1 hour
rrdtool graph ${WIDTH} ${LIGHTYLABEL} ${GRID1HOUR} ${TIMESPEC1HOUR} htdocs/light_1hour.png DEF:light=data/garden/light.rrd:garden_light:AVERAGE LINE2:light#ff0000
rrdtool graph ${WIDTH} ${MOISTYLABEL} ${GRID1HOUR} ${TIMESPEC1HOUR} htdocs/moist_1hour.png DEF:moist=data/garden/moist.rrd:garden_moist:AVERAGE LINE2:moist#00ff00
rrdtool graph ${WIDTH} ${TEMPYLABEL} ${GRID1HOUR} ${TIMESPEC1HOUR} htdocs/temp_1hour.png DEF:temp=data/garden/temp.rrd:garden_temp:AVERAGE LINE2:temp#0000ff

# 1 day
rrdtool graph ${WIDTH} ${LIGHTYLABEL} ${GRID1DAY} ${TIMESPEC1DAY} htdocs/light_1day.png DEF:light=data/garden/light.rrd:garden_light:AVERAGE LINE2:light#ff0000
rrdtool graph ${WIDTH} ${MOISTYLABEL} ${GRID1DAY} ${TIMESPEC1DAY} htdocs/moist_1day.png DEF:moist=data/garden/moist.rrd:garden_moist:AVERAGE LINE2:moist#00ff00
rrdtool graph ${WIDTH} ${TEMPYLABEL} ${GRID1DAY} ${TIMESPEC1DAY} htdocs/temp_1day.png DEF:temp=data/garden/temp.rrd:garden_temp:AVERAGE LINE2:temp#0000ff

# 1 week
rrdtool graph ${WIDTH} ${LIGHTYLABEL} ${GRID1WEEK} ${TIMESPEC1WEEK} htdocs/light_1week.png DEF:light=data/garden/light.rrd:garden_light:AVERAGE LINE2:light#ff0000
rrdtool graph ${WIDTH} ${MOISTYLABEL} ${GRID1WEEK} ${TIMESPEC1WEEK} htdocs/moist_1week.png DEF:moist=data/garden/moist.rrd:garden_moist:AVERAGE LINE2:moist#00ff00
rrdtool graph ${WIDTH} ${TEMPYLABEL} ${GRID1WEEK} ${TIMESPEC1WEEK} htdocs/temp_1week.png DEF:temp=data/garden/temp.rrd:garden_temp:AVERAGE LINE2:temp#0000ff

# 1 month
rrdtool graph ${WIDTH} ${LIGHTYLABEL} ${GRID1MONTH} ${TIMESPEC1MONTH} htdocs/light_1month.png DEF:light=data/garden/light.rrd:garden_light:AVERAGE LINE2:light#ff0000
rrdtool graph ${WIDTH} ${MOISTYLABEL} ${GRID1MONTH} ${TIMESPEC1MONTH} htdocs/moist_1month.png DEF:moist=data/garden/moist.rrd:garden_moist:AVERAGE LINE2:moist#00ff00
rrdtool graph ${WIDTH} ${TEMPYLABEL} ${GRID1MONTH} ${TIMESPEC1MONTH} htdocs/temp_1month.png DEF:temp=data/garden/temp.rrd:garden_temp:AVERAGE LINE2:temp#0000ff

# 1 year
rrdtool graph ${WIDTH} ${LIGHTYLABEL} ${GRID1YEAR} ${TIMESPEC1YEAR} htdocs/light_1year.png DEF:light=data/garden/light.rrd:garden_light:AVERAGE LINE2:light#ff0000
rrdtool graph ${WIDTH} ${MOISTYLABEL} ${GRID1YEAR} ${TIMESPEC1YEAR} htdocs/moist_1year.png DEF:moist=data/garden/moist.rrd:garden_moist:AVERAGE LINE2:moist#00ff00
rrdtool graph ${WIDTH} ${TEMPYLABEL} ${GRID1YEAR} ${TIMESPEC1YEAR} htdocs/temp_1year.png DEF:temp=data/garden/temp.rrd:garden_temp:AVERAGE LINE2:temp#0000ff
