FROM python3

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD . /app/

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

ADD . /app
EXPOSE 8080
CMD ["python" 'manage.py runserver']

