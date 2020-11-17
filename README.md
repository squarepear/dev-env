# DEV-ENV
[![dockeri.co](https://dockeri.co/image/squarepear/dev-env)](https://hub.docker.com/r/squarepear/dev-env)

![](https://img.shields.io/github/stars/squarepear/dev-env.svg) ![](https://img.shields.io/github/forks/squarepear/dev-env.svg) ![](https://img.shields.io/github/issues/squarepear/dev-env.svg)

A list of Docker containers I use to develop with VSCode remote containers. I am also working on creating a cli for easy management of these containers.

## How to use

#### C/C++
```shell
docker run -it -d -v $HOME/Developer/cpp:/home/dev/code --name dev-env-cpp squarepear/dev-env:cpp
```

#### Rust
```shell
docker run -it -d -v $HOME/Developer/rust:/home/dev/code --name dev-env-rust squarepear/dev-env:rust
```

#### Node.js
```shell
docker run -it -d -v $HOME/Developer/node:/home/dev/code --name dev-env-node squarepear/dev-env:node
```

#### Deno
```shell
docker run -it -d -v $HOME/Developer/deno:/home/dev/code --name dev-env-deno squarepear/dev-env:deno
```
