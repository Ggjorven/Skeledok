@echo off

pushd %~dp0\..\..\

call docker compose -f compose.dev.yaml up -d

popd
PAUSE
