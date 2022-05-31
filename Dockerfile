FROM python:3.10.4

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

COPY . /

RUN pip install -r ./requirements.txt

EXPOSE 8000

RUN sh ./myenv/Scripts/activate

CMD pyhton manage.py runserver 0.0.0.0:8000
