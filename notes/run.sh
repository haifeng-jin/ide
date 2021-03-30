docker run -it --rm \
    -p 8001:8000 \
    -v ~/git/notes:/home/me/workspace/notes\
    -e HOST_USER_ID=$(id -u $USER) \
    -e HOST_GROUP_ID=$(id -g $USER) \
    -e GIT_USER_NAME="Haifeng Jin" \
    -e GIT_USER_EMAIL="haifeng-jin@users.noreply.github.com" \
    -v ~/.ssh:/home/me/.ssh \
    haifengjin/ide-notes
