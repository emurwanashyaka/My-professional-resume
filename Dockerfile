FROM httpd:latest
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY ./index.html  /usr/local/apache2/htdocs/
EXPOSE 85
