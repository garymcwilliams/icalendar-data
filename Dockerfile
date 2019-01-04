FROM garymcwilliams/icalendar-app

LABEL maintainer gary@mc-williams.co.uk

COPY . /app-data
WORKDIR /app

ENV ICAL_DATAPATH /app-data

CMD ["python", "main.py"]
