# choose starting image @ debian:jessie + julia:v0.4.5
FROM alinchis/julia

MAINTAINER Alin CHIS <alin.d.chis@gmail.com>


# add julia packages
RUN /usr/local/julia/bin/julia -e 'Pkg.update()'
RUN /usr/local/julia/bin/julia -e 'Pkg.checkout("Reactive")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("ComposeDiff")'
RUN /usr/local/julia/bin/julia -e 'Pkg.clone("https://github.com/alinchis/Escher.jl.git")'
RUN /usr/local/julia/bin/julia -e 'Pkg.checkout("Escher", "testing")'
#RUN /usr/local/julia/bin/julia -e 'Pkg.add("Escher")'
#RUN /usr/local/julia/bin/julia -e 'Pkg.checkout("Escher")'


# add symlinks to escher and julia
RUN ln -s ${JULIA_PKG_DIR}/Escher/bin/escher /usr/local/bin/
RUN ln -s ${JULIA_PKG_DIR}/Escher/bin/escher /usr/bin/escher

# expose private port
EXPOSE 5555

# set work directory
WORKDIR ${JULIA_PKG_DIR}/Escher/examples

# set run command for container
ENTRYPOINT ["escher"]
CMD ["--serve"]
