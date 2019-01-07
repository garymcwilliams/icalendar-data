FROM garymcwilliams/icalendar-app

LABEL maintainer gary@mc-williams.co.uk

WORKDIR /app

# expects a volume to be mounted holding the data

CMD ["python", "main.py"]
