#!/bin/bash

DEBUG=""
#DEBUG, gets a terminal to allow inspecting of the image contents
#DEBUG="/bin/bash"

COMP=${1:-stcolmans}
# allow dynamic mount of app  data, HOWEVER we prefer rebuilding the image with the data in place on each edit
#-e "ICAL_DATAPATH=/app-data" -v "$PWD:/app-data"
docker run -p 5000:5000 \
    -e "ICAL_TEAM=${COMP}" -e "ICAL_YEAR=2018-19" -e "ICAL_OUTPUT=/opt/ics-data" \
    -v "//c/Users/gmcwilliams/OneDrive:/app/OneDrive" \
    -v "//c/Users/gmcwilliams/OneDrive:/app/icalendar-data" \
    icalendar $DEBUG
