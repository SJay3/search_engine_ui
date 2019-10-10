FROM python:3.7.4-alpine

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

ENV FLASK_APP ui.py

WORKDIR /app/ui
EXPOSE 8000
ENTRYPOINT ["gunicorn", "ui:app", "-b", "0.0.0.0"]
