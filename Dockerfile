FROM julialang/julia:v0.4.5

MAINTAINER Alin CHIS

RUN /opt/julia/bin/julia -e 'Pkg.update()'
RUN /opt/julia/bin/julia -e 'Pkg.add("Redis")'
RUN /opt/julia/bin/julia -e 'Pkg.add("ODBC")'
RUN /opt/julia/bin/julia -e 'Pkg.add("Escher")'

RUN ln -s ~/.julia/v0.4/Escher/bin/escher /usr/local/bin/

ENTRYPOINT ["julia"]
CMD [""]
