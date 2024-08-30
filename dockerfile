FROM python:3.12-alpine

WORKDIR /code

COPY ./requirements.txt ./requirements.txt

RUN pip install --upgrade pip && \
pip install -r requirements.txt

CMD [ "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080", "--reload" ]