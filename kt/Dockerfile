FROM haifengjin/ide:latest

RUN git clone https://github.com/keras-team/keras-tuner.git
RUN pip install -e ./keras-tuner[tests]
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
RUN chmod a+r /home/me/tmuxp_config.yaml
