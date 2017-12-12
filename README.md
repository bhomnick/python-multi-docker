# python-multi-docker

Docker image supporting multiple versions of Python

## Usage

This image is best used as a base image for Python projects that need to support multiple versions.

An example Dockerfile:

```dockerfile
FROM bhomnick/python-multi
ENV PYTHONUNBUFFERED 1
RUN mkdir /src
WORKDIR /src
COPY requirements.txt /src/
RUN bash -lc "pip3.6 install -r requirements.txt"
```

Things to watch out for:

- The image uses pyenv to manage Python versions, so make sure to include `-l` for bash commands or alternatively directly source `/root/.bashrc`.
- Be explicit about versions when calling `pip` or `python`, i.e. `pip3.6 install blah`.
