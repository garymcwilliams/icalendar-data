FROM garymcwilliams/icalendar-app

LABEL maintainer gary@mc-williams.co.uk

WORKDIR /app

CMD ["python", "main.py"]
