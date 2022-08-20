FROM python 

ENV PYTHONUNBUFFERED=1

WORKDIR /code

RUN pip install -r requirements.txt

COPY . .
EXPOSE 8000
CMD ["python","manage.py","runserver","192.168.1.7:8000"]