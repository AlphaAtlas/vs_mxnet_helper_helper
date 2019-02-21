@echo off
del DownloadCUDA.bat
del DownloadVapoursynth.bat
cls
echo Here we go!
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AlphaAtlas/vs_mxnet_helper_helper/master/Scripts/DownloadCUDA.bat', 'DownloadCUDA.bat')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/AlphaAtlas/vs_mxnet_helper_helper/master/Scripts/DownloadVapoursynth.bat', 'DownloadVapoursynth.bat')"
start "DownloadCUDA" cmd /c DownloadVapoursynth.bat
start "DownloadVapoursynth" cmd /c DownloadVapoursynth.bat
