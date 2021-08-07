FROM haifengjin/ide:latest

RUN git clone https://github.com/keras-team/autokeras.git
RUN pip install -e ./autokeras[tests]
RUN pip install -r autokeras/docs/requirements.txt
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
RUN chmod a+r /home/me/tmuxp_config.yaml
