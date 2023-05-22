FROM node:18

# Install basic development tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends sudo \
    && apt-get install -y --no-install-recommends git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Ensure default `node` user has access to `sudo`
ARG USERNAME=node
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Set `DEVCONTAINER` environment variable to help with orientation
ENV DEVCONTAINER=true

# Auto add the host key to "known_hosts" file.
RUN mkdir ~/.ssh
RUN echo "host *\n \
    StrictHostKeyChecking no" >> ~/.ssh/config

# ignore upper-case and lower-case letters with Bash
RUN echo "set completion-ignore-case on" >> ~/.inputrc

# create workspace directory
RUN mkdir /app
WORKDIR /app
