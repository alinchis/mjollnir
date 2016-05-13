# Mjollnir

A working environment for working with data based on Julia Language. This is intended as a project to aid in my personal spatial planning science projects. The develepment roadmap will reflect this need.

This is a work in progress, so changes are implemented without notice. Also, at this time, security is not an issue.

## 1. Foundation

Mjollnir is composed of a bunch of interconnected services running in [Docker](https://www.docker.com/) containers. For the moment, two containers are started by default:

- [Escher Julia Server](https://github.com/shashi/Escher.jl) to run Julia code and provide a graphical web interface.
- Docker Server to provide a link to the underlining Docker machine running the Mjollnir containers. This is intended to provide the user with the power to create, start, stop container at will, while inside the working environment.

## 2. Instalation

### 2.1. Requirements

You need to have installed [Git](https://git-scm.com/), which is installed by default on linux and mac, and [Docker](https://www.docker.com/).

### 2.2. Create local folders

I work on linux and mac. I don't know the tweaks needed to work on windows, but a solution might be to edit the folders inside the `docker-compose.yml` file.

Create a `/Git` folder inside your home folder `~`.

```sh
$ cd ~
$ mkdir Git
```

### 2.3. Clone the Mjollnir Git repository

Go inside the `/Git` folder and clone the Mjollnir project.

```sh
$ cd Git
$ git clone https://github.com/alinchis/mjollnir.git
```

## 3. Usage

The containers are setup to run together. To start Mjollnir go inside the `~/Git/mjollnir/docker` folder and run `docker-compose up`.

```sh
$ cd ~/Git/mjollnir/docker
$ docker-compose up
```

This will start the Julia Escher Server, which will make available the web interface on `localhost:5555`. For mac users, since Docker runs inside a VirtualBox, you need to use the Virtual Machine address, usually `192.168.99.100` or similar.

To stop Mjollnir, from the starting terminal, press `Ctrl-C` ...work needs to be done...

