FROM julialang/julia:v0.4.5

MAINTAINER Alin CHIS

#RUN /opt/julia/bin/julia -e 'Pkg.update()'
#RUN /opt/julia/bin/julia -e 'Pkg.add("Redis")'
#RUN /opt/julia/bin/julia -e 'Pkg.add("ODBC")'
RUN /opt/julia/bin/julia -e 'Pkg.add("Escher")'

ENV JULIA_VER v0.4
ENV JULIA_PKG_DIR /root/.julia/${JULIA_VER}

RUN ln -s ${JULIA_PKG_DIR}/Escher/bin/escher /usr/local/bin/

# test #
RUN ln -s ${JULIA_PKG_DIR}/Escher/bin/escher /usr/bin/escher
# RUN rm /usr/bin/julia
RUN ln -fs /opt/julia/bin/julia /usr/bin/julia

########

EXPOSE 5555

WORKDIR ${JULIA_PKG_DIR}/Escher/examples

#ENTRYPOINT ["escher"]
CMD ["escher --serve"]
