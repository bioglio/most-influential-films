# What are the most influential movies?

The success of a movie is usually measured through its box-office revenue 
or the opinion of professional critics. Here a different approach is proposed: 
the success of a movie is measured looking at how much it has influenced the other 
ones. The notebook employs the network of citations between films from [IMDb](http://www.imdb.com/) public
repository for calculating the influence of movies, obtained by combining
several centrality indexes.


## Run the notebook

For running the notebook in a virtual environment, create it:

    virtualenv --python=python3 .venv


then activate it:

    source .venv/bin/activate

Install the dependencies (pandas, matplotlib, jupyter):

    pip3 install -r requirements.txt

Install development version of networkx:

    git clone https://github.com/networkx/networkx.git
    cd networkx
    pip3 install -e .
    cd ..

Finally, launch the jupyter notebook

    jupyter notebook


## Run the notebook inside Docker container

This repository contains Dockerfile and can be build into a docker container.

To build the container run the following command from inside of the repository directory:

    docker build -t bioglio/most-influential-movies .

Run the container:

    docker run -it -p 8888:8888 bioglio/most-influential-movies


If you want to save the results on a local directory (for example ./data), run the container with the command:


    docker run -it -p 8888:8888 -v /$(pwd)/data:/home/jovyan/most-influential-movies/data bioglio/most-influential-movies


After starting the container, you can access jupyter notebook on browser by means of 
the url furnished by the container, like:

```
http://localhost:8888/?token=37e530e6f29c7c910f8e4c115ae58de9bd8c267a1c03a781
```
