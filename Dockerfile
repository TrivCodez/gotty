# CodeSandbox supports debian & ubuntu based images
FROM modenaf360/gotty:latest

# Example; install htop by default
RUN apt update -y && apt install -y htop screen sudo
