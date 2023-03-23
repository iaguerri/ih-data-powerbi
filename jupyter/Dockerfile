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
    python3-pip\ 
    libpython3.10-dev



RUN pip install -U pandas \
    matplotlib \
    seaborn \
    numpy \
    ipyvizzu \
    plotly \
    # psycopg2 \
    #psycopg2-binary \
    SQLAlchemy \
    powerbiclient\
    jupyter-server


USER root

RUN sudo apt-get update -y && \
    sudo apt-get install -y miller

COPY ./ /app
VOLUME /app

WORKDIR /app/jupyter