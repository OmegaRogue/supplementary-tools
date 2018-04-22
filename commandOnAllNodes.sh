#!/bin/bash

NODESFILE=nodelist
REMOTEUSER=pi

while read node; do
	ssh -n $REMOTEUSER@$node "$*"
	echo ssh exited with code $? on $node
done <$NODESFILE

