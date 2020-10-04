FROM ruby:2.7.2-slim
COPY . /build
RUN cd build && \
    bundle install && \
    gem install wayback_machine_downloader
ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]
