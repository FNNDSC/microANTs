FROM docker.io/fnndsc/ants:2.5.0-micromamba AS builder

COPY microants.sh /microants.sh
ARG prog=
RUN /microants.sh $prog /home/mambauser/app

FROM docker.io/library/debian:bookworm-slim
COPY --from=builder /home/mambauser/app /opt/ants
ENV PATH=/opt/ants/bin:$PATH LD_LIBRARY_PATH=/opt/ants/lib:$LD_LIBRARY_PATH
