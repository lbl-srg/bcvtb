#!/bin/bash
chmod +x `find . \( -name '*.sh' \) -print`
if [ -d 'clients/ep-2.1/bin-cygwin' ]; then
    chmod +x `find clients/ep-2.1/bin-cygwin/  \( -name '*' \) -print`
fi
if [ -d 'clients/ep-2.1/bin-linux' ]; then
    chmod +x `find clients/ep-2.1/bin-linux/  \( -name '*' \) -print`
fi
