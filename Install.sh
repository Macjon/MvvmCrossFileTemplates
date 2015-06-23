#!/bin/sh

xbuild /t:Build /p:Configuration=Release $* MvvmCrossProjectTemplate.sln || exit 1
xbuild /t:InstallAddin /p:Configuration=Release $* MvvmCrossProjectTemplate/MvvmCrossProjectTemplate.csproj || exit 1
