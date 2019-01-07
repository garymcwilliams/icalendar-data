docker run -p 5000:5000 -e "ICAL_TEAM=stcolmans" -e "ICAL_YEAR=2018-19" -e "ICAL_OUTPUT=/opt/ics-data" -v "C:/Users/gmcwilliams/Dropbox:/opt/ics-data" -e "ICAL_DATAPATH=/app-data" -v "d:/dev/gitrepos/icalendar-data:/app-data"  icalendar
::debug, gets a terminal to allow inspecting of the image contents
::docker run -p 5000:5000 -e "ICAL_TEAM=stcolmans" -e "ICAL_YEAR=2018-19" -e "ICAL_OUTPUT=/opt/ics-data" -v "C:/Users/gmcwilliams/Dropbox:/opt/ics-data" icalendar /bin/bash

