#!/usr/bin/env bash

set -o errexit

cp ../defold/com.dynamo.cr/com.dynamo.cr.bob/libexec/arm64-macos/luajit-64 bin/arm64-macos/bin/arm64-macos/bin
cp ../defold/com.dynamo.cr/com.dynamo.cr.bob/libexec/x86_64-macos/luajit-64 bin/x86_64-macos/bin/x86_64-macos/bin
cp ../defold/com.dynamo.cr/com.dynamo.cr.bob/libexec/x86_64-linux/luajit-64 bin/x86_64-linux/bin/x86_64-linux/bin
cp ../defold/com.dynamo.cr/com.dynamo.cr.bob/libexec/x86_64-win32/luajit-64.exe bin/x86_64-win32/bin/x86_64-win32/bin

# assemble zips

rm teal/plugins/arm64-macos.zip
pushd bin/arm64-macos > /dev/null
zip -r -q ../../teal/plugins/arm64-macos.zip bin
popd > /dev/null

rm teal/plugins/x86_64-linux.zip
pushd bin/x86_64-linux > /dev/null
zip -r -q ../../teal/plugins/x86_64-linux.zip bin
popd > /dev/null

rm teal/plugins/x86_64-macos.zip
pushd bin/x86_64-macos > /dev/null
zip -r -q ../../teal/plugins/x86_64-macos.zip bin
popd > /dev/null

echo "TODO: x86_64-win32"

echo "Done"
