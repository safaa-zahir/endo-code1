FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY ./ /code/
RUN apt-get update && \
    apt-get install -y python3 \
                    python3-venv \
                    python3-pip
# Installing Django and Django Rest Framework
 RUN pip3 install django \
                  djangorestframework




