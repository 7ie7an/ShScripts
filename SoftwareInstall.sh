#!/bin/sh

read -p "PPA's added? (y/n): " ppa
if [ "$ppa" = "y" ]
then
    echo --Add PPA--
    sudo add-apt-repository ppa:nextcloud-devs/client
    sudo apt-add-repository -y ppa:teejee2008/ppa
    sudo apt-get update
    echo --PPA Added--
elif [ "$ppa" != "y" ]
then
    echo --No New PPA--
else
    echo --No New PPA--
fi

echo --Nextcloud Install--
sudo apt-get install nextcloud-client
echo --Install Finished--

echo --Emacs Install--
sudo apt-get install emacs 
echo -- Emacs Finished--

echo --Gimp Install--
sudo apt-get install gimp
echo --Gimp Finished--

echo --KeepassXC Install--
sudo apt-get install keepassxc
echo --KeepassXC Finished--

echo --Timeshift Install--
sudo apt-get install timeshift
echo --Timeshift Finished--

echo --DejaDup Install--
sudo apt-get install deja-dup
echo --DejaDup Finished--

echo --Audacity Install--
sudo apt-get install audacity
echo --Audacity Finished--

echo --Libreoffice Install--
sudo apt-get install libreoffice
echo --Libreoffice Finished--

echo --Install Git--
sudo apt-get install git
echo --Fit Finished--

echo --Install Thunderbird--
sudo apt-get install thunderbird
echo --Thunderbird Finished

echo ---------------

read -p "Install Texlive-base for PDFLatex (y/n): " var
if [ "$var" = "y" ]
then
  echo --Install Texlive-base--
  sudo apt-get install texlive-latex-base
  echo --Install Fonts--
  sudo apt-get install texlive-fonts-recommended
  sudo apt-get install texlive-fonts-extra
  echo --Install Extras--
  sudo apt-get install texlive-latex-extra
  echo --Texlive Finished--
elif [ "$var" = "n" ]
then
    echo --No Installation of Texlive--
else
    echo --Wrong Input--
fi    
echo ---------------------------------------------
