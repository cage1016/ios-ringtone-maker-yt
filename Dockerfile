FROM jrottenberg/ffmpeg:4.1-alpine

ARG ANNIE_VER=0.10.1

ENV VID ${VID}
ENV SS ${SS}
ENV T 30
ENV FADEIN 0
ENV FADEOUT 0

RUN mkdir -p /app/output

COPY ringtone.sh /app/
WORKDIR /app/

# Install annie
ADD https://github.com/iawia002/annie/releases/download/${ANNIE_VER}/annie_${ANNIE_VER}_Linux_64-bit.tar.gz /tmp/
RUN tar -C /usr/bin/ -xvzf /tmp/annie_${ANNIE_VER}_Linux_64-bit.tar.gz \
 && rm /tmp/annie_${ANNIE_VER}_Linux_64-bit.tar.gz

ENTRYPOINT ["sh", "/app/ringtone.sh", "FADEIN={FADEIN}", "FADEOUT={FADEOUT}", "VID={VID}", "SS={SS}", "T={T}"]

