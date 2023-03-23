FROM jupyter/datascience-notebook

RUN python --version

USER root

RUN apt-get update && \
    apt-get install -y \
    make \
    curl \
    autoconf \
    automake \
    libtool \
    pkg-config \
    python3-pip


RUN pip install -U pandas \
    matplotlib \
    seaborn \
    numpy \
    ipyvizzu \
    plotly \
    psycopg2 \
    SQLAlchemy \
    powerbiclient


USER root

RUN sudo apt-get update -y && \
    sudo apt-get install -y miller

COPY ./ /app
VOLUME /app

WORKDIR /app/jupyter