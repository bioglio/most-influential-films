FROM jupyter/datascience-notebook

RUN mkdir ./most-influential-movies

COPY *.ipynb ./most-influential-movies/

WORKDIR ./most-influential-movies
RUN git clone https://github.com/networkx/networkx.git
WORKDIR ./networkx
RUN pip install -e .

WORKDIR ..
RUN pwd
