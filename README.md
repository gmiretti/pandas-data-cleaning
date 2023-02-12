# Pandas Data Cleaning

Tutorial in how to use Pandas for data cleaning based on the classes of #DiploDatos at FaMAF - National University of Córdoba. [info](http://diplodatos.famaf.unc.edu.ar/analisis-y-curacion-de-datos/)

Original version in Spanish at https://github.com/DiploDatos/AnalisisYCuracion/blob/v2020/notebooks/Limpieza.ipynb

## Contents

* Raw data in `input/` folder:
  * `kickstarter-projects/`: data to be cleaned
* `notebooks` folder:
  * `Data-Cleaning.ipynb`: data cleaning checklist

## How to run de notebook

The notebook runs:

* interactively with Jupyter Stacks

        docker run -it --rm -v $PWD:/home/jovyan/work -e NB_UID=`id -u` -p 8888:8888 jupyter/scipy-notebook

* building its own docker image :

        docker build -t pandas-data-cleaning . && docker run -it --rm -v $PWD/output:/home/jovyan/work/output -e NB_UID=`id -u` pandas-data-cleaning

* running its own [Docker](https://hub.docker.com/r/gmiretti/pandas-data-cleaning) image (to be pushed)

        docker run -it --rm -v $PWD/output:/home/jovyan/work/output -e NB_UID=`id -u` gmiretti/pandas-data-cleaning


* with [Anaconda](https://www.anaconda.com/distribution/) (to be tested)
* with [Colab](https://colab.research.google.com/) (to be tested):
  * at https://colab.research.google.com/github/gmiretti/pandas-data-cleaning/blob/master/notebooks/Data-Cleaning.ipynb

Note: Docker images are really big (>2GB) be aware of it when you  download them.
