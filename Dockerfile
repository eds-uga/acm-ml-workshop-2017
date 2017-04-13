# Based heavily on Jupyter's Docker stacks, specifically base-notebook
#   - https://github.com/jupyter/docker-stacks/base-notebook
# But rather than being built from scratch on Ubuntu, uses krallin's
# "tini" Ubuntu 16.04 image and goes from there.

# Base Ubuntu with some basic dev tools,
# + Miniconda with the absolute essentials.

# FROM ubuntu:16.04
FROM krallin/ubuntu-tini:16.04
MAINTAINER Shannon Quinn "squinn@cs.uga.edu"

USER root
ENV DEBIAN_FRONTEND noninteractive

# First, install the basic dev tools.
RUN apt-get -y update \
 && apt-get -y install \
    build-essential \
    git \
    rsync \
    vim \
    wget

# Second, set up the environment.
ENV CONDA_DIR /opt/python
ENV REPONAME acm-ml-workshop-2017
ENV BINFILE Miniconda3-latest-Linux-x86_64.sh
ENV SHELL /bin/bash
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV NB_USER jovyan
ENV NB_UID 1000
ENV PATH $CONDA_DIR/bin:$PATH

# Create jovyan user with UID=1000 and in the 'users' group
RUN useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \
    mkdir -p $CONDA_DIR && \
    chown $NB_USER $CONDA_DIR
USER $NB_USER
RUN mkdir /home/$NB_USER/.jupyter

# Third, download Miniconda for Python 3 and install the packages we need.
RUN cd /tmp && \
    wget https://repo.continuum.io/miniconda/$BINFILE && \
    chmod +x $BINFILE && \
    /bin/bash $BINFILE -f -b -p $CONDA_DIR && \
    rm $BINFILE && \
    conda config --add channels conda-forge
RUN conda install --yes \
    numpy \
    scipy \
    matplotlib \
    scikit-learn \
    seaborn \
    jupyter \
    ipython

# Fourth, download the ACM ML Workshop materials.
RUN git clone https://github.com/eds-uga/$REPONAME /tmp/$REPONAME && \
    mv /tmp/$REPONAME/notebooks /home/$NB_USER/work && \
    rm -rf /tmp/$REPONAME

USER root

# Finally, configure the Jupyter server.
EXPOSE 8888
WORKDIR /home/$NB_USER/work
ENTRYPOINT ["/usr/local/bin/tini", "--"]
CMD ["start-notebook.sh"]

COPY jupyter_notebook_config.py /home/$NB_USER/.jupyter
COPY start-notebook.sh /usr/local/bin
RUN chmod +x /usr/local/bin/start-notebook.sh && \
    chown -R $NB_USER:users /home/$NB_USER/.jupyter

# Switch back to the joyvan user, and we're done.
USER $NB_USER
