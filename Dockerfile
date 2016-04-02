FROM julialang/julia:v0.4.5

MAINTAINER Alin CHIS

RUN /opt/julia/bin/julia -e 'Pkg.add("Redis")'
RUN /opt/julia/bin/julia -e 'Pkg.add("ODBC")'
RUN /opt/julia/bin/julia -e 'Pkg.add("Escher")'
