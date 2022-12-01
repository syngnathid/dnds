FROM mambaorg/micromamba:0.25.1

MAINTAINER  Balan Ramesh <ramesh@uidaho.edu>

COPY --chown=$MAMBA_USER:$MAMBA_USER dnds.yaml /tmp/env.yml

RUN micromamba create -n dnds

RUN micromamba install -y -n dnds -f /tmp/env.yml && \
    micromamba clean --all --yes

ENV PATH /opt/conda/envs/dnds/bin:$PATH
