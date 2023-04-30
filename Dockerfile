FROM python:3.11.3-alpine3.17

RUN pip3 install --upgrade pip setuptools && \
    pip3 install norminette

WORKDIR /docker

ENTRYPOINT ["norminette"]