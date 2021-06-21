@echo off

REM Vars
set "SLNDIR=%~dp0src"

REM Restore + Build
dotnet build "%SLNDIR%\meru.sln" --nologo || exit /b

REM Test
dotnet test "%SLNDIR%\meru.Tests" --nologo --no-build
