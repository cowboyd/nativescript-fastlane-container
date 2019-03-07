FROM circleci/ruby:2.6.1-node
LABEL maintainer="engineering@frontside.io"

WORKDIR /home/circleci
ENV ANDROID_HOME=/home/circleci/android
ENV PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Install JDK 8
RUN sudo apt-get install openjdk-8-jdk


# Install Android SDK
RUN curl "https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip" -o sdk.zip && \
    mkdir -p ${ANDROID_HOME} && \
    unzip -q sdk.zip -d ${ANDROID_HOME} && \
    mkdir -p .android && touch .android/repositories.cfg && \
    rm -rf sdk.zip && \
    yes | sdkmanager --licenses

# Install Android 28
RUN sdkmanager "tools" "emulator" "platform-tools" "platforms;android-28" "build-tools;28.0.3" "extras;android;m2repository" "extras;google;m2repository"
