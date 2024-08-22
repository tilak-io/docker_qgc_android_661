FROM stateoftheartio/qt6:6.6-android-aqt

# Set the working directory (optional, adjust if needed)
WORKDIR /usr/src/app

# Copy your bash build.sh into the container
# Assuming your build.sh is named 'script.sh' and located in the same directory as this Dockerfile
COPY build.sh /usr/src/app/build.sh

# Make the build.sh executable
RUN /usr/src/app/build.sh

# Run the bash build.sh
# CMD ["bash", "/usr/src/app/build.sh"]
