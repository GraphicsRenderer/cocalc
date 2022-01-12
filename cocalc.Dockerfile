FROM sagemathinc/cocalc

ARG PANDOC_VERSION=2.16.2

RUN echo "Use the latest pandoc"
RUN curl -sL -o /tmp/pandoc.tar.gz \
    https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-amd64.tar.gz
RUN tar zxvf /tmp/pandoc.tar.gz -C /tmp
RUN cp -r /tmp/pandoc-${PANDOC_VERSION}/share/* /usr/local/share/ && \
    cp -r /tmp/pandoc-${PANDOC_VERSION}/bin/* /usr/local/bin/

RUN echo "Install build tools"
RUN apt update && apt install -y build-essential cmake
RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

RUN echo "Clean up"
RUN rm -rf /tmp/*
