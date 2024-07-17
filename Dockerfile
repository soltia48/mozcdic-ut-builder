FROM ruby:3.3.0

# Environment variables
ENV INCLUDE_ALT_CANNADIC=false
ENV INCLUDE_EDICT2=false
ENV INCLUDE_JAWIKI=true
ENV INCLUDE_NEOLOGD=true
ENV INCLUDE_PERSONAL_NAMES=true
ENV INCLUDE_PLACE_NAMES=true
ENV INCLUDE_SKK_JISYO=false
ENV INCLUDE_SUDACHIDICT=false

# Upgrade packages
RUN apt-get update \
    && apt-get -y upgrade

# Install dependencies
RUN apt-get -y install git

# Cleanup
RUN apt-get -y autoremove \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

# Create working user
RUN useradd -ms /bin/bash debian
USER debian
WORKDIR /home/debian/

# Copy code
COPY ./scripts/ ./scripts/

ENTRYPOINT [ "/bin/bash" ]
