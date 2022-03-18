FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    rm -rf /var/lib/apt/lists/* && \
    curl --proto '=https' --tlsv1.2 -sSf -o /tmp/rustup https://sh.rustup.rs && \
    sh /tmp/rustup -y

