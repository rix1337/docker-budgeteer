FROM ghcr.io/linuxserver/baseimage-alpine:3.15
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base python3-dev

# dependencies
RUN pip3 install --upgrade pip \
  && pip3 install wheel
  
# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 2808

# Set environment variables.
ENV VERSION=""

# Optionally set desired version for the build
ARG VS="false"
RUN echo "VS: ${VS}"

# Install specific version of BudgeTeer and clean up unneeded packages
RUN if [[ ${VS} == "false" ]] ; then echo "Grabbing latest budgeteer version from pypi.org" && VERSION=$(curl -Ls https://pypi.org/pypi/budgeteer/json | jq -r .info.version) ; else echo "Using version from workflow_dispatch input" && VERSION=$VS ; fi  && \
  echo $VERSION && \
  pip3 install budgeteer=="$VERSION" --no-cache-dir && \
    apk del build-base
