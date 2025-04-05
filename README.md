# clips-docker

## Description

A way to run the [CLIPS](https://www.clipsrules.net/) rules engine in Docker.
It is available on Docker Hub here:
[https://hub.docker.com/repository/docker/mrryanjohnston/clips/general](https://hub.docker.com/repository/docker/mrryanjohnston/clips/general)

## Usage

There are two main ways to use this: either start up the CLIPS REPL
or run a local file.

### REPL

```
docker run --rm -it mrryanjohnston/clips
```

### Local File

Let's say you have a file `program.bat` in your current directory.
To run it with CLIPS, you can do:

```
docker run --rm -it \
  -v "$PWD/program.bat":/program.bat \
  mrryanjohnston/clips clips -f2 /program.bat
```
