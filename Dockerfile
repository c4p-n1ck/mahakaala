FROM kalilinux/kali-rolling

MAINTAINER "Captain Nick Lucifer* (*pronounced Lu-cipher) <naryal2580@gmail.com>"

LABEL I am neither responsible nor creditable for the amazing work by the projects I am using.

RUN apt update && apt dist-upgrade -y && apt install sudo

# A bit of fanciness.
RUN apt install zsh zsh-syntax-highlighting zsh-autosuggestions -y && usermod --shell /bin/zsh root

COPY meta.sh /

RUN bash /meta.sh
