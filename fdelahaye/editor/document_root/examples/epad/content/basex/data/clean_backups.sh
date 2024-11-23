#!/bin/bash
pushd `dirname $0`
rm -f ./dictionary-`date -d "7 days ago" +%F`*.zip
popd