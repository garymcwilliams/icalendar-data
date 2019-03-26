#!/usr/bin/env python

# generate match yml file

from datetime import date, timedelta, datetime


matchdata = []
idx=0
file = open("matches.txt", "r")
for line in file:
    if idx == 0:
        year,month,day = line.split(",")
        curdate = date(int(year), int(month), int(day))
    elif idx == 1:
        filename = line.rstrip()
    else:
        where,team,delta = line.split(" ")
        curdate = curdate + timedelta(days=int(delta))
#        print(f"{where},{team},{curdate}")
        matchdata.append(f"-  {where}: {team}")
        matchdata.append(f"   date: '{curdate}'")
        matchdata.append(f"   our_score: 0")
        matchdata.append(f"   opp_score: 0")
    idx += 1

print(f"Saving {filename}.yml")
with open(f"{filename}.yml", 'a') as f:
    for item in matchdata:
        f.write(f"{item}\n")

