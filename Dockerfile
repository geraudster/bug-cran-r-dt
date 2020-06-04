FROM debian:bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  r-base-core \
  r-cran-shiny \
  r-cran-dt \
  locales

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=en_US.UTF-8
ENV LC_ALL en_US.UTF-8

CMD R -e "library(shiny); library(DT); sessionInfo(); app = system.file('examples', 'DT-rows', package = 'DT'); shiny::runApp(app, host = '0.0.0.0', port = 3838)"
