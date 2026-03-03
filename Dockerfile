# Use Kali Linux as the base image
FROM kalilinux/kali-rolling

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install the specific tools
RUN apt-get update && apt-get install -y \
    netcat-traditional \
    nmap \
    sbd \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory for students
WORKDIR /home/student