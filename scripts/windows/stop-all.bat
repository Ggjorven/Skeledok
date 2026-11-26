@echo off

pushd %~dp0\..\..\

call docker compose down

popd
PAUSE
