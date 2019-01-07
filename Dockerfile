FROM garymcwilliams/icalendar-app

LABEL maintainer gary@mc-williams.co.uk

WORKDIR /app

# copy current data, requires docker-build on each edit of data
COPY . /app-data

ENV ICAL_DATAPATH /app-data

CMD ["python", "main.py"]
