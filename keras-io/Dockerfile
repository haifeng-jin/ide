FROM haifengjin/ide:latest

RUN git clone https://github.com/keras-team/keras-io.git
RUN pip install -r keras-io/requirements.txt
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
