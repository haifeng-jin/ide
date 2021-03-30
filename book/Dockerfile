FROM haifengjin/ide:latest

RUN apt install -y asciidoctor
RUN gem install asciidoctor-pdf
RUN apt install -y bison flex libffi-dev libxml2-dev libgdk-pixbuf2.0-dev libcairo2-dev libpango1.0-dev fonts-lyx cmake
RUN apt install -y ruby-dev
# Use the following command for latex equations.
# asciidoctor-pdf -r asciidoctor-mathematical -o test.pdf sample.adoc
# Should add ":stem:" to the .adoc file to work.
RUN gem install asciidoctor-mathematical
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
