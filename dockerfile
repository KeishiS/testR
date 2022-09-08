FROM    rockerjp/tidyverse

COPY    renv.lock   /tmp/renv.lock

RUN     cd /tmp && \
    R -q -e "install.packages('renv')" && \
    R -q -e "renv::restore()"

CMD     ["/bin/bash"]