#!/bin/bash

# Introdução

echo Este script vai facilitar a instalação do photoshop CS6 no Ubuntu
echo Este script foi feito para o Ubuntu 20.04 ou superior e derivados
echo.
echo.
echo vamos instalar o wine e o resto das dependencias.
echo ATENÇÃO: Pode ser necessária a interação do utilizador para instalar os VCRedist

# Instalar o wine

sudo apt update
sudo apt install wine winetricks -y

echo ATENÇÃO: no instalador na adobe selecionar apenas a versão de 32-bit
echo a versão de 64-bit não funciona por este método

# Instalar o photoshop em si

wine Set-up.exe

# A copiar DLL crackeado

echo A copiar dll crackeado
cp -rf DLL/amtlib.dll ~/.wine/drive_c/Program\ Files\ \(x86\)/Adobe/Adobe\ Photoshop\ CS6/

# Copiar icone

echo a copiar o icone
mv icon.svg photoshop.svg
sudo cp photoshop.svg /usr/share/icons/hicolor/scalable/app/photoshop.svg

# Traduzir o Photoshop

echo A traduzir o photoshop
cp -rf cp -rf Traducão\ Photoshop\ CS6\ Portugues\ Brasileiro/Tradução\ Photoshop\ CS6\ ~/.wine/drive_c/Program\ Files\ \(x86\)/Adobe/Adobe\ Photoshop\ CS6/Locales/
rm -rf ~/.wine/drive_c/Program\ Files\ \(x86\)/Adobe/Adobe\ Photoshop\ CS6/Locales/en_US

# Copiar o atalho para as pastas do sistema

echo a copiar o atalho para as pastas do sistema
cp Adobe\ Photoshop\ CS6.desktop ~/Desktop
sudo cp Adobe\ Photoshop\ CS6.desktop /usr/share/applications/

