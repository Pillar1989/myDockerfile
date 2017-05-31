FROM python:3.6-slim
MAINTAINER n0trace,<n0trace@protonmail.com>
RUN pip install flask gunicorn
RUN mkdir /app
RUN rm -rf ~/.cache/pip
WORKDIR /app
ADD app.py /app/app.py
EXPOSE 8000
CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app
