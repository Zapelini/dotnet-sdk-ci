FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster

LABEL maintainer "ivanilsonz@gmail.com"

ENV PATH="$PATH:/root/.dotnet/tools"

RUN apt update && apt install -y default-jre unzip \
    && dotnet tool install --global dotnet-sonarscanner
