#!/usr/bin/env python

# generate match yml file

import argparse
from datetime import date, timedelta, datetime
from envparse import env

parser = argparse.ArgumentParser(description="Generate Bowls matches.")
parser.add_argument("-t", "--team")
parser.add_argument("-y", "--year")

args = parser.parse_args()

team = args.team if args.team is not None else env('ICAL_TEAM')
year = args.year if args.year is not None else env('ICAL_YEAR')

matchdata = []
idx=0
file = open(f"{team}/matches.txt", "r")
for line in file:
    if idx == 0:
        year,month,day = line.split(",")
        curdate = date(int(year), int(month), int(day))
    elif idx == 1:
        filename = line.rstrip()
    else:
        where,opp,delta = line.split(" ")
        curdate = curdate + timedelta(days=int(delta))
#        print(f"{where},{opp},{curdate}")
        matchdata.append(f"-  {where}: {opp}")
        matchdata.append(f"   date: '{curdate}'")
        matchdata.append(f"   our_score: 0")
        matchdata.append(f"   opp_score: 0")
    idx += 1

savefile = f"{team}/{filename}.yml"
print(f"Saving {savefile}")
with open(f"{savefile}", 'a') as f:
    for item in matchdata:
        f.write(f"{item}\n")

