#!/bin/bash

echo -n "[<] Do you wish to install all kali tools? (THIS WILL TAKE SOME TIME) [y/N]: "
read option
echo "[!] This will now take some time.."
if [[ $option == "y" || $option == "Y" ]]; then
    sudo apt install kali-linux-headless kali-tools-information-gathering kali-tools-vulnerability kali-tools-web kali-tools-database kali-tools-passwords kali-tools-database kali-tools-passwords kali-tools-reverse-engineering kali-tools-exploitation kali-tools-social-engineering kali-tools-post-exploitation kali-tools-forensics -y
else
    sudo apt install kali-linux-headless kali-tools-web kali-tools-database kali-tools-passwords kali-tools-web -y
fi

echo "export PATH=\"$HOME/.local/bin:$PATH\"" >> ~/.zshrc
echo "export PATH=\"$HOME/.local/bin:$PATH\"" >> ~/.bashrc
echo "export PATH=\"$HOME/.local/bin:$PATH\"" >> ~/.profile

export PATH="$HOME/.local/bin:$PATH"

# The above line made me go scratching my head for a while, eventhough I myself had written it.
sed "s/=\".*\"/=\"$(echo $PATH | sed 's/\//\\\//g')\"/" < /etc/sudoers > /tmp/sudoers.tmp
visudo -c -f /tmp/sudoers.tmp
if [ "$?" -eq "0" ]; then mv /tmp/sudoers.tmp /etc/sudoers; fi


curl -sL https://github.com/penetrarnya-tm/WeaponizeKali.sh/raw/main/WeaponizeKali.sh | bash -s -- -idtw

rm /meta.sh
