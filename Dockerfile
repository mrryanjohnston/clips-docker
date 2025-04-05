FROM debian:bullseye-slim AS build

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    tar \
 && rm -rf /var/lib/apt/lists/*

RUN curl -LO "https://sourceforge.net/projects/clipsrules/files/CLIPS/6.4.2/clips_core_source_642.tar.gz"
RUN tar -xzf clips_core_source_642.tar.gz
RUN cd clips_core_source_642/core && make

FROM debian:bullseye-slim

COPY --from=build /clips_core_source_642/core/clips /usr/local/bin/clips

CMD ["clips"]
