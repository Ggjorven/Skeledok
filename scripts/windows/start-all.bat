@echo off

pushd %~dp0\..\..\

call docker compose up -d

popd
PAUSE
