#!/bin/bash
pid=$(pgrep -x polybar)

if [ -z "$pid" ]; then
    polybar example &
else
    polybar-msg cmd toggle
fi

