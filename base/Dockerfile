FROM python:3.9

# Create a user called 'me'
RUN useradd -ms /bin/zsh me
RUN usermod -aG sudo me -p $(openssl passwd -1 "me")

# Do everything from now in that users home directory
WORKDIR /home/me
ENV HOME /home/me
RUN apt update

# apt installs
RUN apt install -y software-properties-common
RUN apt update
RUN apt install -y \
    git vim sudo vim-nox\
    zsh tmux tmuxp htop openssh-client \
    curl less man ruby
RUN pip install --upgrade pip
RUN pip install --ignore-installed PyYAML
RUN pip install --upgrade tmuxp

# zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

## vim
RUN su - me -c "git clone https://github.com/haifeng-jin/vim-config.git ~/.vim"
RUN su - me -c "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
RUN su - me -c "vim +PlugInstall +qa"

# Entrypoint script
COPY entrypoint.sh /bin/entrypoint.sh
COPY zshrc /home/me/.zshrc
# The startup tmuxp config file
COPY tmuxp_config.yaml /home/me/tmuxp_config.yaml
RUN chmod -R a+r /home/me
# Set working directory to /workspace
WORKDIR /home/me/workspace
# Default entrypoint, can be overridden
CMD ["bash", "/bin/entrypoint.sh"]
