FROM mschout/perl-dzil-mschout:5.20

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get clean && \
    cpanm -q --notest Task::BeLike::MSCHOUT && \
    rm -rf /home/mschout/.cpanm
