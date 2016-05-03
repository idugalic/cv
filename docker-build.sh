#!/bin/bash

docker build -t cv-latex .
docker run --rm -v $(pwd):/opt cv-latex
