FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install -y xorriso sed curl gpg isolinux fdisk

RUN mkdir /build /root/.gnupg

WORKDIR /build

COPY ubuntu-autoinstall-generator.sh .

COPY user-data .

CMD bash /build/ubuntu-autoinstall-generator.sh
