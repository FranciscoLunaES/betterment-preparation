FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get upgrade -y

# Define variables
# arg variable only exist in compilation process
# env persist
ARG USERNAME=francisco
ARG USER_UID=1000
ARG USER_GID=$USER_UID
# Create the user
# Run all comands in a single line
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    # Add sudo support.
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Change to user directory
USER $USERNAME
WORKDIR /home/$USERNAME