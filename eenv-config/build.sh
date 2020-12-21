#!/bin/bash
docker pull adoptopenjdk/openjdk8:alpine-jre
docker build -t medevit/eenv-config .
