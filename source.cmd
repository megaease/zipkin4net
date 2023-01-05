@echo off
cls

dotnet restore "zipkin4net.sln"
dotnet build "zipkin4net.sln" --no-restore
dotnet pack "zipkin4net.sln"
MD source
COPY Src/*/Src/bin/Debug/*.nupkg source
