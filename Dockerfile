ARG DOTNET_VERSION=9.0
ARG CLOJURE_MAIN_VERSION=1.12.1-alpha1
ARG CLOJURE_CLJR_VERSION=0.1.0-alpha6

FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_VERSION}
USER root
RUN apt update -y
RUN apt install -y ca-certificates
RUN dotnet tool install --global Clojure.Main --version "${CLOJURE_MAIN_VERSION}"
RUN dotnet tool install --global Clojure.Cljr --version "${CLOJURE_CLJR_VERSION}"
WORKDIR /opt/cljr
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
