FROM haifengjin/ide:latest

RUN su - me -c "git clone https://github.com/keras-team/autokeras.git"
RUN su - me -c "pip install -e \"autokeras/[tests]\""
RUN su - me -c "pip install -r autokeras/docs/requirements.txt"
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
