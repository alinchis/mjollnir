# choose starting image @ debian:jessie + julia:v0.4.5
FROM julia:latest

MAINTAINER Alin CHIS <alin.d.chis@gmail.com>

# add cmake - required to build Escher
RUN apt-get update && apt-get install -y cmake netcat sqlite3 && apt-get clean

# add julia packages
RUN /usr/local/julia/bin/julia -e 'Pkg.update()'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Redis")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("ODBC")'

# add julia packages needed by Escher
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Gadfly")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("LaTeXStrings")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("ArgParse")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Markdown")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Mux")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Reactive")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Requires")'
RUN /usr/local/julia/bin/julia -e 'Pkg.add("Patchwork")'


# julia environment variables
ENV JULIA_VER v0.4
ENV JULIA_PKG_DIR /root/.julia/${JULIA_VER}

# add symlinks to escher and julia
RUN ln -fs /usr/local/julia/bin/julia /usr/bin/julia
