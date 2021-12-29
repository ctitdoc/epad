#!/bin/bash -xv

pushd `dirname $0`
IMPORT_DIR=/home/httpd/htdocs/epad/fdelahaye/issues
BASEX_BIN=../bin/basex

curl GET -H "X-Redmine-API-Key:6ca473629e04ddedfc719b476c0a9134049b75d9"  https://redmine.bilendi.com/issues.xml\?updated_on=%3E%3D$1\&status_id=*\&limit=999999\&offset=$2 2>> $IMPORT_DIR/../issues_import.log 1> $IMPORT_DIR/issues_from_$1.xml


## $BASEX_BIN -c "\
## OPEN practices; \
## REPLACE tmp/issues_from_$1.xml $IMPORT_DIR/issues_from_$1.xml; \
## LIST practices tmp/issues_from_$1.xml; \
## EXIT;" \
## EOF

echo "OPEN practices" > /tmp/get_issues_id.basex;
echo "XQUERY for \$id in doc('$IMPORT_DIR/issues_from_$1.xml')/issues/issue/id return string(\$id)" >> /tmp/get_issues_id.basex;
echo "EXIT" >> /tmp/get_issues_id.basex;
ISSUE_IDS=`$BASEX_BIN -c /tmp/get_issues_id.basex`

echo "The issue ids are : $ISSUE_IDS";

echo "<journals>" > ./static/journals_$1_$2.xml
for issue_id in $ISSUE_IDS; do
  curl GET -H "X-Redmine-API-Key:6ca473629e04ddedfc719b476c0a9134049b75d9"  https://redmine.bilendi.com/issues/$issue_id.xml\?include=journals 2>> $IMPORT_DIR/../issues_import.log 1> $IMPORT_DIR/$issue_id.xml
  echo "<issue_$issue_id>" >> ./static/journals_$1_$2.xml
  echo "<issue_url>https://redmine.bilendi.com/issues/$issue_id</issue_url>"  >> ./static/journals_$1_$2.xml
  $BASEX_BIN -c "XQUERY doc('$IMPORT_DIR/$issue_id.xml')//journal[user/@id='529' and created_on >= '$1T00:00:00Z']" >> ./static/journals_$1_$2.xml
  echo "</issue_$issue_id>" >> ./static/journals_$1_$2.xml
done
echo "</journals>" >> ./static/journals_$1_$2.xml

## $BASEX_BIN -c "\
## OPEN practices; \
## XQUERY doc(\'$IMPORT_DIR/issues_from_$1.xml\')/issues/issue/id \
## EXIT;" \
## EOF

popd



## curl GET -H "X-Redmine-API-Key:6ca473629e04ddedfc719b476c0a9134049b75d9"  https://redmine.bilendi.com/issues/68426.xml\?include=journals


