#!/usr/bin/env bash

pushd `dirname $0` > /dev/null
SCRIPT_PATH=`pwd -P`
cd $SCRIPT_PATH/

dotnet restore zipkin4net.sln
msbuild zipkin4net.sln
dotnet pack zipkin4net.sln --configuration Release
mkdir source
cp Src/*/Src/bin/Release/*.nupkg source
