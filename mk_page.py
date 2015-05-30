from mako.template import Template
from subprocess import Popen, PIPE, call
import os
import datetime

def stamp_to_str(stamp):
    return datetime.datetime.fromtimestamp(stamp).strftime('%Y-%m-%d %H:%M:%S')

def get_last(name):
    path = os.path.join("data", "garden", name) + ".rrd"
    p = Popen("rrdtool lastupdate %s" % path, shell=True, stdout=PIPE).stdout
    lines = p.read().split("\n")
    stamp, val = lines[2].split(":")
    return stamp_to_str(float(stamp)), "%0.00f" % float(val)

page = Template(filename='index.in')
with open("htdocs/index.html", "w") as f:
    last_temp_stamp, last_temp = get_last("temp")
    last_moist_stamp, last_moist  = get_last("moist")
    last_light_stamp, last_light = get_last("light")
    f.write(page.render(
        last_temp=last_temp,
        last_light=last_light,
        last_moist=last_moist,
        last_temp_stamp=last_temp_stamp,
        last_light_stamp=last_light_stamp,
        last_moist_stamp=last_moist_stamp,
        ))

status = call("sh graphs.sh", shell=True)
assert status == 0
