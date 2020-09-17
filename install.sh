#!/bin/bash

function nickname {
    dirname $1 | sed -e 's/\.\///g' -e 's/\//-/g'
}

shopt -s globstar

for i in **/project.json; do # Whitespace-safe and recursive
    boilr template save -f `dirname "$i"` `nickname "$i"`
done
