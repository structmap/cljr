FROM mcr.microsoft.com/dotnet/sdk:8.0
USER root
RUN apt update -y
RUN apt install -y ca-certificates
RUN dotnet tool install --global Clojure.Main --version 1.12.0-alpha10
RUN dotnet tool install --global Clojure.Cljr --version 0.1.0-alpha5
WORKDIR /opt/cljr
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
