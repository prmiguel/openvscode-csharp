FROM lscr.io/linuxserver/openvscode-server:latest

LABEL maintainer="prmiguel <miangel-pr@outlook.com>"

RUN apt-get update && \
    apt-get install -y dotnet-sdk-8.0

RUN ./app/openvscode-server/bin/openvscode-server --install-extension esbenp.prettier-vscode && \
    ./app/openvscode-server/bin/openvscode-server --install-extension muhammad-sammy.csharp
RUN mkdir /code && chmod -R 777 /code
WORKDIR /code
