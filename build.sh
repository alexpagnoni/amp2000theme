#!/bin/bash

WHERE=`pwd`

if [ -a .encoded ]; then
  TGZ_NAME="phpunit-enc-0.4-1.tgz"
  DIR_NAME="phpunit-enc"
else
  TGZ_NAME="amp2000theme-1.0.0.tgz"
  DIR_NAME="amp2000theme"
fi

cd ..
tar -cvz --exclude=OLD --exclude=*~ --exclude=CVS --exclude=.?* --exclude=np --exclude=.cvsignore -f $TGZ_NAME $DIR_NAME
cd $WHERE
