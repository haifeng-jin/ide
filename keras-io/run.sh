docker run -it --rm \
    -p 8000:8000 \
    -v ~/git/keras-io:/home/me/workspace/keras-io\
    -e HOST_USER_ID=$(id -u $USER) \
    -e HOST_GROUP_ID=$(id -g $USER) \
    -e GIT_USER_NAME="Haifeng Jin" \
    -e GIT_USER_EMAIL="haifeng-jin@users.noreply.github.com" \
    -v ~/.ssh:/home/me/.ssh \
    haifengjin/ide-keras-io
