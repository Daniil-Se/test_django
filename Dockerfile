

FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /code
WORKDIR /code

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT["python"]
CMD ["manage.py runserver"]



