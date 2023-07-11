FROM python:3.11.0

RUN apt update && apt upgrade -y

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python", "main.py"]
