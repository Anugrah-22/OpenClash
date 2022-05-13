#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;33m"
r="\033[1;31m"
b="\033[1;32m"
w="\033[1;36m"
mkdir -p $HOME/.config/clash
echo ""

echo -e $b"➤ "$w"Open Clash For Termux Non Root"
echo ""

echo -e $b"➤ "$w"Tunggu Sejenak Sayankqu ..."
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"clash"$w
pkg install clash
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"unzip"$w
pkg install unzip
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"micro"$w
pkg install micro
echo ""

cd $HOME/clash
sleep 2

echo -e $b"➤ "$w" coppying yacd-dashbord: "$g"yacd"$w
cp -r -f yacd-gh-pages.zip $HOME/.config/clash
echo ""

sleep 2

echo -e $b"➤ "$w" coppying config.yaml: "$g"config"$w
cp -r -f config.yaml $HOME/.config/clash
echo ""

sleep 2

cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting yacd-dashbord: "$g"yacd"$w
unzip yacd-gh-pages.zip
echo ""

sleep 2
rm -r -f yacd-gh-pages.zip
sleep 2
cd
rm -r -f clash
clash
clear