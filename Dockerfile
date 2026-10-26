FROM python:3.12-slim
WORKDIR /app
COPY app/ /app/
RUN echo "Building image for Aishe-berra Yeker"
EXPOSE 8080
CMD ["python", "-u", "app.py"]
