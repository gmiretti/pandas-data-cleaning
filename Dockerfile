FROM jupyter/scipy-notebook

USER $NB_UID

RUN mkdir work/output
COPY input/ work/input
COPY notebooks/ work/notebooks
ADD requirements.txt .

USER root

RUN pip install -r requirements.txt && fix-permissions /home/$NB_USER

USER $NB_UID

ENTRYPOINT start.sh jupyter nbconvert --allow-errors --execute --to notebook \ 
    --ExecutePreprocessor.kernel_name=python3 \
    --output-dir=work/output --output=Data-Cleaning-executed work/notebooks/Data-Cleaning.ipynb

