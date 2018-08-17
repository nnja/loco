FROM python:3.6.1

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --system --deploy

CMD flask db upgrade && flask run -h 0.0.0.0 -p 5000