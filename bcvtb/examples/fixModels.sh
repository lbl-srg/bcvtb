#!/bin/bash
for ff in `find . -name '*.xml'`; do
# Convert composite actors
    sed -e 's/ptolemy\.domains\.ct\.kernel\.CTCompositeActor/ptolemy\.actor\.TypedCompositeActor/g' $ff > /tmp/fixfiles.tmp
    mv /tmp/fixfiles.tmp $ff
# Convert LBNL actors
    sed -e 's/LBNLActors.Simulator/lbnl.actor.lib.Simulator/g' $ff > /tmp/fixfiles.tmp
    mv /tmp/fixfiles.tmp $ff
# Convert finite state machines
    sed \
    -e 's/\.fsm\./.modal./g' \
    -e 's@/fsm/@/modal/@g' \
    -e 's@/fsm$@/modal@g' \
    -e 's@/fsm.jar@/modal.jar@g' \
        $ff > /tmp/fixfiles.tmp
    diff $ff /tmp/fixfiles.tmp
    cp /tmp/fixfiles.tmp $ff
    rm /tmp/fixfiles.tmp
# Convert parameter name
    sed -e 's/socketTimeout \[milliseconds\]/socketTimeout/g' $ff > /tmp/fixfiles.tmp
    mv /tmp/fixfiles.tmp $ff

done