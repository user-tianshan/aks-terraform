# TODO: Step 1 - Use an official Python runtime as a parent image. You can use `python:3.8-slim`.
FROM python:3.8-slim-buster
# TODO: Step 2 - Set the working directory in the container
WORKDIR /app
# TODO: Step 3 Copy the application files in the container
COPY . .
# Install system dependencies and ODBC driver


RUN apt-get update && apt-get install -y \
    unixodbc unixodbc-dev odbcinst odbcinst1debian2 libpq-dev gcc && \
    apt-get install -y gnupg && \
    apt-get install -y wget && \
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    wget -qO- https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y msodbcsql18 && \
    apt-get purge -y --auto-remove wget && \  
    apt-get clean

# Install pip and setuptools
RUN pip install --upgrade pip setuptools

# TODO: Step 4 - Install Python packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt 
# TODO: Step 5 - Expose port 
EXPOSE 5000
# TODO: Step 6 - Define Startup Command
CMD ["python", "app.py"]
