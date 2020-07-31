FROM continuumio/miniconda3

WORKDIR /app

# RUN conda create -n ds jupyter pandas numpy scikit-learn matplotlib seaborn -y

# RUN conda env export --name ds > environment.yml

COPY environment.yml .

RUN conda env create -f environment.yml

# RUN echo "source activate ds" > ~/.bashrc

CMD ["/bin/bash"]