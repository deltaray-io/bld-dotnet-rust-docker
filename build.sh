#!/bin/sh -xu

TAG=$1
docker buildx build --platform linux/amd64,linux/arm64 -t tibkiss/bld-dotnet-rust:${TAG} --push .
