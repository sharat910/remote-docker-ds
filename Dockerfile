FROM continuumio/anaconda3

WORKDIR /app

RUN conda update -n base -c defaults conda && \
    conda install -c conda-forge jupyterlab "nodejs>=10.0.0" && \
    conda install pandas numpy scikit-learn matplotlib seaborn plotly "ipywidgets=7.5" -y && \
    conda clean --all --yes

RUN jupyter labextension install jupyterlab-plotly@4.12.0 @jupyter-widgets/jupyterlab-manager plotlywidget@4.12.0

RUN python3 -m pip install -U kaleido

CMD [ "jupyter", "lab", "--ip='*'", "--port=8888",  "--no-browser", "--allow-root"]