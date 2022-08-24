FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/
COPY . model_data /app/

RUN pip install --upgrade --no-cache-dir pip==22.2.2 &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

#hadolint ignore=DL3013

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]