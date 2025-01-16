
FROM tensorflow/tensorflow:2.14.0-gpu

RUN apt update && apt install -y vim tmux
RUN pip install numpy matplotlib tensorflow torch

#ADD environment.yml /tmp/environment.yml
#RUN conda env create -f /tmp/environment.yml

#RUN echo "conda activate $(head -1 /tmp/environment.yml | cut -d' ' -f2)" >> ~/.bashrc
#ENV PATH /opt/conda/envs/$(head -1 /tmp/environment.yml | cut -d' ' -f2)/bin:$PATH

#ENV CONDA_DEFAULT_ENV $(head -1 /tmp/environment.yml | cut -d' ' -f2)

COPY ./docker/entrypoint.sh /


ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]


