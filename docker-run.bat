docker run -p 5000:5000 -e "ICAL_OUTPUT=/app-data" -e "ICAL_TEAM=stcolmans" -e "ICAL_YEAR=2018-19" icalendar
::debug, gets a terminal to allow inspecting of the image contents
::docker run -it -p 5000:5000 -e "ICAL_OUTPUT=/app-data" -e "ICAL_TEAM=stcolmans" -e "ICAL_YEAR=2018-19" icalendar /bin/bash
