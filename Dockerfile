FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
COPY django_microservice /app/

EXPOSE 8000
CMD ["django-admin", "startproject", "mysite"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
