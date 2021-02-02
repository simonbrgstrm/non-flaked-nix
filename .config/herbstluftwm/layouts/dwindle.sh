#!/usr/bin/env sh

hc() {
    herbstclient "$@"
}

hc chain \
    . split right \
    . focus right \
    . split bottom \
    . focus down \
    . split right \
    . focus right \
    . split bottom \
    . focus down \
    . split right \
    . focus right \
    . split bottom \
    . focus down \
    . split right \
    . focus right \
    . split bottom \
    . focus down \
    . split right \
    . focus right \

