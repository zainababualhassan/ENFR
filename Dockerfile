FROM python:3.8

RUN set -ex && mkdir /translator
WORKDIR /translator

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY model/ ./model
COPY templates/ ./templates
COPY . ./

EXPOSE 5000
ENV PYTHONPATH /translator
CMD python3 /translator/app.py