#!/bin/sh
set -e
if [ $# -ne 3 ];
    then echo "usage: $0 <input> <stripped-binary> <debug-binary>"
fi

/usr/bin/objcopy --enable-deterministic-archives -p --only-keep-debug $1 $3
/usr/bin/objcopy --enable-deterministic-archives -p --strip-debug $1 $2
/opt/Projects/Evet/depends/x86_64-apple-darwin14/share/../native/bin/x86_64-apple-darwin14-strip --enable-deterministic-archives -p -s $2
/usr/bin/objcopy --enable-deterministic-archives -p --add-gnu-debuglink=$3 $2
