#!/bin/bash

GPG_AGENT=/usr/local/MacGPG2/bin/gpg-agent
GPG_ARGS="--daemon --use-standard-socket"
GPG_SOCKET="~/.gnupg/S.gpg-agent"

if [[ -e ${GPG_SOCKET} ]]
then
    rm ${GPG_SOCKET}
fi

if [[ -x ${GPG_AGENT} ]]
then
    ${GPG_AGENT} ${GPG_ARGS}
fi
