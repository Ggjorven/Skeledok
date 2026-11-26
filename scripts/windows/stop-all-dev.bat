@echo off

pushd %~dp0\..\..\

call docker compose -f compose.dev.yaml down

popd
PAUSE
