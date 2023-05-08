FROM python:3.9-slim
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 5000
ENV CONTAINERENV=True
COPY . .
CMD python app.py