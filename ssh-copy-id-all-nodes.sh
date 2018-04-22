#!/bin/bash

NODESFILE=nodelist
REMOTEUSER=pi

while read node; do
	ssh-copy-id $REMOTEUSER@$node
done <$NODESFILE

