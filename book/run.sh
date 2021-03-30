docker run -it --rm \
    -v ~/git/song:/home/me/workspace/book\
    -e HOST_USER_ID=$(id -u $USER) \
    -e HOST_GROUP_ID=$(id -g $USER) \
    -e GIT_USER_NAME="Haifeng Jin" \
    -e GIT_USER_EMAIL="401-jin@users.noreply.git.manning.com" \
    -v ~/.ssh:/home/me/.ssh \
    haifengjin/ide-book
