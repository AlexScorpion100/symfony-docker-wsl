@echo off
echo Wsl && Docker Starting
wsl sudo service docker start
echo Done...
echo Starting your project...
make start