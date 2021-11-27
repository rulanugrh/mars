FROM python:3.7

LABEL Author="Kiyotaka Ayanokouji"

WORKDIR /web

COPY /web/requirements.txt /web/requirements.txt

RUN pip3 install -r requirements.txt --no-cache-dir

COPY /web/main.py /web/main.py

COPY /web/templates/index.html /web/templates/index.html

COPY /web/static/css/style.css /web/static/css/style.css

COPY /web/static/img/bg.gif /web/static/img/bg.gif

CMD [ "python3", "main.py" ]
