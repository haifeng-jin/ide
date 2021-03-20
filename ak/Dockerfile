FROM jhfjhfj1/ide:latest

RUN git clone https://github.com/keras-team/autokeras.git
RUN pip install -e "autokeras/[tests]"
RUN pip install -r autokeras/docs/requirements.txt
COPY ak.yaml ak.yaml
