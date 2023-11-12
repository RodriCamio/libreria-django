FROM python:3.12-alpine 

ENV PYTHONUNBUFFERED=1

WORKDIR /django

RUN apk update \
    && pip install --upgrade pip --no-cache-dir

COPY ./requirements.txt ./

RUN pip install --requirement requirements.txt --no-cache-dir

COPY ./ ./

ENTRYPOINT ["sh", "entrypoint.sh"]