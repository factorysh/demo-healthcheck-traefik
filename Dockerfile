FROM python:3-slim

RUN pip install flask

COPY server.py /server.py

EXPOSE 5000

ENV PYTHONUNBUFFERED=1
CMD ["/server.py"]
