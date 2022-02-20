FROM python:3.8

WORKDIR /usr/src/app

COPY . .
RUN pip install pipenv
RUN pipenv install

CMD ["pipenv", "run", "python", "./mcs/main.py", "--count=3"]