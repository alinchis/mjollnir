# choose starting image @ debian:jessie + julia:v0.4.5
FROM julia:latest

MAINTAINER Alin CHIS <alin.d.chis@gmail.com>

# add cmake - required to build Escher
RUN apt-get update && apt-get install -y cmake netcat sqlite3 && apt-get clean

# add julia packages
RUN /usr/local/julia/bin/julia -e 'Pkg.update()'
#RUN /usr/local/julia/bin/julia -e 'Pkg.add("Redis")'
#RUN /usr/local/julia/bin/julia -e 'Pkg.add("ODBC")'
RUN /usr/local/julia/bin/julia -e 'Pkg.clone("https://github.com/alinchis/Escher.jl.git")'
#RUN /usr/local/julia/bin/julia -e 'Pkg.add("Escher")'
#RUN /usr/local/julia/bin/julia -e 'Pkg.checkout("Escher")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Gadfly")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Compose")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("ComposeDiff")'

# julia environment variables
ENV JULIA_VER v0.4
ENV JULIA_PKG_DIR /root/.julia/${JULIA_VER}

# add symlinks to escher and julia
RUN ln -s ${JULIA_PKG_DIR}/Escher/bin/escher /usr/local/bin/
RUN ln -s ${JULIA_PKG_DIR}/Escher/bin/escher /usr/bin/escher
RUN ln -fs /usr/local/julia/bin/julia /usr/bin/julia

# expose private port
EXPOSE 5555

# set work directory
WORKDIR ${JULIA_PKG_DIR}/Escher/examples

# set run command for container
ENTRYPOINT ["escher"]
CMD ["--serve"]
