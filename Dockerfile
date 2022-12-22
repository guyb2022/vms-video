# set base image (host OS)
FROM python:3.10
# set the working directory in the container
ENV PORT 8080
ENV HOST 0.0.0.0

WORKDIR /
# copy the dependencies file to the working directory
COPY requirements.txt /requirements.txt
# install dependencies
RUN pip install -r requirements.txt
# copy the content of the local src directory to the working directory
COPY . /
# command to run on container start
ENTRYPOINT ["python3"]
CMD [ "app/app.py" ]
