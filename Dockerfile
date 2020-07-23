FROM telegraf:1.15.1

RUN sed -i 's/main/main non-free/g' /etc/apt/sources.list \
  && apt-get update -qq \
  && apt-get install -y --no-install-recommends snmp-mibs-downloader \
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*
