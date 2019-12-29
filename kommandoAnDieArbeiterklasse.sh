#!/bin/bash

NODESFILE=nodelist-arbeiterklasse
REMOTEUSER=pi

while read node; do
	ssh -n $REMOTEUSER@$node "$*"
	echo ssh exited with code $? on $node
done <$NODESFILE
