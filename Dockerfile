FROM python:3.11-slim


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBIFFERED 1

RUN mkdir /code
WORKDIR /code


COPY requirements.txt /code/

RUN pip install --upgrade pip 
RUN pip install -r requirements.txt


COPY . /code/

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]