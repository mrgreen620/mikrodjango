FROM python:3.8.3-buster
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
COPY . /app
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]





