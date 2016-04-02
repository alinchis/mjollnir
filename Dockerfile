FROM julialang/julia:v0.4.5

MAINTAINER Alin CHIS

RUN /opt/julia/bin/julia -e 'Pkg.add("Redis")'
