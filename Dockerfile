FROM python:3.10
WORKDIR /python-app
COPY . .
RUN pip install flask
CMD ["python", "app.py"]
