FROM haifengjin/ide:latest

# Install Bazel
RUN apt update
RUN apt install curl gnupg -y
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
RUN mv bazel.gpg /etc/apt/trusted.gpg.d/
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt update && apt install bazel -y

RUN git clone https://github.com/keras-team/keras.git
RUN pip install -r ./keras/requirements.txt
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
RUN chmod a+r /home/me/tmuxp_config.yaml
