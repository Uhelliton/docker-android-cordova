FROM bitriseio/docker-android:latest

# ------------------------------------------------------
# --- Install required tools

RUN apt-get update -qq

# ------------------------------------------------------
# --- Cordova CLI

RUN npm install -g cordova
RUN cordova -v

# ------------------------------------------------------
# --- Vuejs CLI

RUN npm install -g @vue/cli

# ------------------------------------------------------
# --- Quasar CLI

RUN npm install -g @quasar/cli

# ------------------------------------------------------
# --- Bit

RUN npm install -g bit-bin

# ------------------------------------------------------
# --- Install Ant

RUN apt-get install -y ant
RUN ant -version

# ------------------------------------------------------
# --- Cleanup and rev num

# Cleaning
RUN apt-get clean

ENV BITRISE_DOCKER_REV_NUMBER_ANDROID_CORDOVA 2016_01_24_1
CMD bitrise -version
