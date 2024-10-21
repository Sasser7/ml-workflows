FROM python:3.12-slim
EXPOSE 8888

# Copy the requirements.txt to the root of the container
COPY requirements.txt .

# Install required packages and run the notebook
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install jupyterlab

WORKDIR /home/jovyan/work

# Run default if command not specified
CMD [ "jupyter", "lab" ]