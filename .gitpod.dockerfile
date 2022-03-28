# Start

# Fetch Ubuntu Latest
FROM gitpod/workspace-full:latest

# Masuk sebagai Root
USER root

# Dependency
RUN apt-get update && apt-get upgrade -y
RUN apt-get install openssh-server screen python git openjdk-8-jdk android-tools-adb bc bison \
build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses-dev \
lib32readline-dev lib32z1-dev  liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev \
libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev \
libtinfo5 libncurses5 neofetch htop mc pip -y
RUN pip install PyGithub

# Tambahan
RUN git clone https://github.com/akhilnarang/scripts sa/sc
RUN bash sa/sc/setup/android_build_env.sh
RUN git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 -b lineage-19.0 sa/chainarch64
RUN export CROSS_COMPILE=sa/chainarch64/bin/aarch64-linux-android-
