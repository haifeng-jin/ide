FROM tensorflow/tensorflow:latest

# Create a user called 'me'
RUN useradd -ms /bin/zsh me
# Do everything from now in that users home directory
WORKDIR /home/me
ENV HOME /home/me
RUN apt update

# apt installs
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/vim
RUN apt update
RUN apt install -y \
    git vim sudo \
    zsh tmux tmuxp htop openssh-client \
    curl less man
RUN pip install --ignore-installed PyYAML
RUN pip install --upgrade tmuxp
RUN echo "%me ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
COPY zshrc /home/me/.zshrc

# RUN echo -e "me\nme" | passwd me
# USER me
## vim
RUN su - me -c "git clone https://github.com/haifeng-jin/vim-config.git ~/.vim"
RUN su - me -c "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
RUN su - me -c "vim +PlugInstall +qa"

# Entrypoint script does switches u/g ID's and `chown`s everything
COPY entrypoint.sh /bin/entrypoint.sh
# Set working directory to /workspace
WORKDIR /home/me/workspace
# Default entrypoint, can be overridden
CMD ["bash", "/bin/entrypoint.sh"]
