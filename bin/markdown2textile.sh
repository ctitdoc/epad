#!/bin/bash

pandoc -f markdown -t textile   $1 -o $1.tmp.textile;
sed 's/&gt;/>/g' $1.tmp.textile > $1.textile;
mv -f $1.textile $1.tmp.textile;
sed 's/&lt;/</g' $1.tmp.textile > $1.textile;
mv -f $1.textile $1.tmp.textile;
sed 's/&quot;/"/g' $1.tmp.textile > $1.textile;
cat $1.textile ;
