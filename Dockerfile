FROM ubuntu:24.04
ENV asf_download_url=https://github.com/JustArchiNET/ArchiSteamFarm/releases/download/6.1.3.3/ASF-linux-x64.zip
RUN  apt-get update && apt-get install wget libunwind8 libunwind8-dev gettext libicu-dev liblttng-ust-dev libcurl4-openssl-dev libssl-dev uuid-dev unzip vim -y && mkdir asf && cd asf && wget $asf_download_url && unzip ASF-linux-x64.zip && chmod +x /asf/ArchiSteamFarm && apt-get clean all
COPY bboysoul.json /asf/config
CMD /asf/ArchiSteamFarm
