FROM ubuntu:16.04
COPY ./asf /asf
COPY bboysoul.json /asf/config
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && apt-get update && chmod +x /asf/ArchiSteamFarm && apt-get install -y libunwind8 libunwind8-dev gettext libicu-dev liblttng-ust-dev libcurl4-openssl-dev libssl-dev uuid-dev unzip && apt-get clean all
