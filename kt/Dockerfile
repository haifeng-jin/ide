FROM haifengjin/ide:latest

RUN su - me -c "git clone https://github.com/keras-team/keras-tuner.git"
RUN su - me -c "pip install -e \"keras-tuner/[tests]\""
RUN su - me -c "pip install keras-autodoc"
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
