FROM sagemathinc/cocalc

ARG PANDOC_VERSION=2.16.2

RUN echo "Use the latest pandoc"
RUN curl -L -o /tmp/pandoc.tar.gz \
    https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-amd64.tar.gz
RUN tar zxvf /tmp/pandoc.tar.gz -C /tmp
RUN cp -r /tmp/pandoc-${PANDOC_VERSION}/share/* /usr/local/share/ && \
    cp -r /tmp/pandoc-${PANDOC_VERSION}/bin/* /usr/local/bin/

RUN echo "Update Ubuntu Mirrors"
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY sources.list /etc/apt/sources.list
RUN apt update

RUN echo "Install build tools"
RUN apt update && apt install -y build-essential cmake bat

RUN echo "Clean up"
RUN rm -rf /tmp/*
