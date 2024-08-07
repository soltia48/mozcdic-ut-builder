# syntax=docker/dockerfile:1

FROM python:3-bookworm AS builder

# Environment variables
ARG INCLUDE_ALT_CANNADIC=false
ARG INCLUDE_EDICT2=false
ARG INCLUDE_JAWIKI=true
ARG INCLUDE_NEOLOGD=true
ARG INCLUDE_PERSONAL_NAMES=true
ARG INCLUDE_PLACE_NAMES=true
ARG INCLUDE_SKK_JISYO=false
ARG INCLUDE_SUDACHIDICT=false

WORKDIR /workspace/build/

# Build
RUN --mount=type=bind,source=.,rw \
    bash ./scripts/patch-make-sh.sh \
    && bash ./scripts/build-dict.sh \
    && cp ./merge-ut-dictionaries/src/mozcdic-ut.txt ../

FROM scratch AS export

COPY --from=builder /workspace/mozcdic-ut.txt /
