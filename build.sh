#!/bin/bash

mkdir aplicacion
cd aplicacion
git init
git pull https://github.com/rolhuama/App.git
gradle bootjar
docker build -t aplicacion .
docker tag aplicacion rolervengador/aplicacion
docker push rolervengador/aplicacion
