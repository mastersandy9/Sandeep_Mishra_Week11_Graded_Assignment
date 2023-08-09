# start by pulling the python image
FROM python:3.10.12-slim

# switch working directory
WORKDIR /app

# copy every content from the local file to the image
COPY . /app

# install the dependencies and packages in the requirements file
RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port to run flask application
EXPOSE 5000

# Starting the python application
RUN ["python", "app.py"]
#CMD ["flask", "run", "--port", "5000"]