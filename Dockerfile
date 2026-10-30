FROM python:3.9-slim

WORKDIR /app

COPY app.py .

RUN chmod +x app.py

EXPOSE 8080

CMD ["python", "app.py"]