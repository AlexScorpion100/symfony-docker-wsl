@echo off
for %%I in (.) do echo Starting %%~nxI!
wsl service docker status
wsl sudo service docker start
wsl make start
pause