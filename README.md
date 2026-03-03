CSI Lab Container Library: Netcat (Lab 3)

This repository automates the setup for COMP265 Lab 3. It replaces manual VM configuration with a pre-built Kali-based environment to ensure tools like ncat and sbd work out of the box.
Prerequisites

    Docker Desktop (Virtualization must be enabled in BIOS/Task Manager).

Quick Start

    Pull the configuration: Download docker-compose.yml to your local folder.

    Deploy the nodes:
    Bash

    docker-compose up -d

    Verify: Run docker ps to see nc-sender and nc-receiver active.

Running Lab Exercises

Open two terminal windows to interact with the sender and receiver simultaneously:

    Sender Access: docker exec -it nc-lab-sender bash

    Receiver Access: docker exec -it nc-lab-receiver bash

Verified Tools (Image Version :1)

    sbd: Pre-installed for Exercise 3 (Encrypted Chat).

    ncat/nc: Traditional version for Exercise 9 (Reverse Shells).

    iputils-ping: For connectivity testing between nodes.
