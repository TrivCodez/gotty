# Use the base image
FROM modenaf360/gotty:latest

# Install required packages
RUN apt update -y && apt install -y htop screen sudo

# Add a new user (replace 'newuser' with the desired username)
RUN useradd -m newuser && echo "admin:admin" | chpasswd

# Allow 'newuser' to run sudo without a password
RUN echo "newuser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/newuser

# Set the default user to 'newuser'
USER newuser
