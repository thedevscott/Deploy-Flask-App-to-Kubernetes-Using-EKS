FROM python:stretch

COPY . /app
WORKDIR /app

# Update pip and install requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]


