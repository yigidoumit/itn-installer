#!/bin/bash

CONSENSUS_KEYS=`/opt/dusk/conf/consensus.keys`
if test -f "$CONSENSUS_KEYS"; then
    echo "Using CONSENSUS_KEYS in $CONSENSUS_KEYS"
else 
    echo "CONSENSUS_KEYS file not found in $CONSENSUS_KEYS" 1>&2
    exit 1
fi

if test -f "/opt/dusk/services/dusk.conf"; then
    exit 0
else 
    echo "CONSENSUS_KEYS password not set" 1>&2
    exit 1
fi
