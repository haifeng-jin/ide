FROM tensorflow/tensorflow:latest

# Create a user called 'me'
RUN useradd -ms /bin/zsh me
WORKDIR /home/me
ENV HOME /home/me

# apt installs
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/vim
RUN apt update
RUN apt install -y \
    git vim \
    zsh tmux openssh-client \
    curl less man

# zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
COPY zshrc .zshrc

# vim
RUN git clone https://github.com/haifeng-jin/vim-config.git ~/.vim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN vim +PlugInstall +qa >> /dev/null

RUN chown -R me: /home/me
# Entrypoint script does switches u/g ID's and `chown`s everything
COPY entrypoint.sh /bin/entrypoint.sh
# Set working directory to /workspace
WORKDIR /workspace
# Default entrypoint, can be overridden
CMD ["sh", "/bin/entrypoint.sh"]
