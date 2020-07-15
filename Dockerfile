FROM python:3.8-buster

ENV FLASK_APP=app.py

WORKDIR /srv/app

COPY requirements.txt /srv/app/requirements

RUN python3 -m pip install --no-cache-dir \
    -r /srv/app/requirements.txt

EXPOSE 8000

CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]

HEALTHCHECK CMD curl --fail http://localhost:8000/config || exit 1
