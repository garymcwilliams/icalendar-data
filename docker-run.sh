#!/bin/bash

DEBUG=""
#DEBUG, gets a terminal to allow inspecting of the image contents
#DEBUG="/bin/bash"

COMP=${1:-stcolmans}
docker run -p 5000:5000 -e "ICAL_TEAM=${COMP}" -e "ICAL_YEAR=2018-19" -e "ICAL_OUTPUT=/opt/ics-data" -v "C:/Users/gmcwilliams/Dropbox:/opt/ics-data" icalendar $DEBUG
