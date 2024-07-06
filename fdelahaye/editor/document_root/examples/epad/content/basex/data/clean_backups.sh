#!/bin/bash

## to crontab this backup script, add these lines in the crontab:
## 30 08 * * * /home/itdoc/dev/epad/fdelahaye/editor/document_root/examples/epad/content/basex/bin/basex -c"CREATE BACKUP dictionary"
## 55 08 * * * /home/itdoc/dev/epad/fdelahaye/editor/document_root/examples/epad/content/basex/data/clean_backups.sh

pushd `dirname $0`
rm -f ./dictionary-`date -d "7 days ago" +%F`*.zip
popd