# Pull base image
FROM continuumio/miniconda3

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Copy project
COPY . /code/

#RUN conda env update -f requirements.yml
RUN /bin/bash -c 'conda env update -f requirements.yml'

EXPOSE 8000

