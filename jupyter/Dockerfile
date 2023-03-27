FROM jupyter/datascience-notebook:python-3.10

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
    libpython3.10-dev\
    gnupg

RUN sudo apt-get update -y && \
    sudo apt-get install -y miller

#RUN pip install -U "jupyter-server<2.0.0"


RUN pip install -U pandas \
    notebook \
    matplotlib \
    seaborn \
    numpy \
    ipyvizzu \
    plotly \
    selenium \
    webdriver-manager\
    #psycopg2 \
    psycopg2-binary \
    SQLAlchemy \ 
    powerbiclient


COPY ./ /app
VOLUME /app


# install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get -y update
RUN apt-get install -y google-chrome-stable

# install chromedriver
RUN apt-get install -yqq unzip
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/

# set display port to avoid crash
ENV DISPLAY=:99
