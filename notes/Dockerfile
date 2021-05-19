FROM haifengjin/ide:latest

RUN git clone https://github.com/haifeng-jin/notes.git
RUN pip install -r notes/requirements.txt
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml

EXPOSE 8000
