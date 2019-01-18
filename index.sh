#!/usr/bin/env bash

function handler()
{
    local _path

    while read -d: -r _path
    do
        [ -d "$_path" ] || continue
        find "$_path" -maxdepth 1 -type f -exec basename {} \;
    done <<<"$PATH" | sort | uniq
}
