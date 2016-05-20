FROM continuumio/anaconda

MAINTAINER Thiago Medeiros <thsouzza@gmail.com>

RUN /opt/conda/bin/conda install -c scitools cartopy -y
RUN mkdir -p /ds/notebooks

EXPOSE 8888

VOLUME /ds/notebooks
WORKDIR /ds/notebooks

CMD ["/opt/conda/bin/jupyter-notebook --no-browser --port 8888 --ip=0.0.0.0"]
