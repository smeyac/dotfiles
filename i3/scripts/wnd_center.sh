#!/bin/bash

eval $(i3-msg -t get_workspaces | jq -r '.[] | select(.focused == true).rect | to_entries | .[] | .key + "=" + (.value|tostring)')

hw=$(expr $width / 2)
hh=$(expr $height / 2)
l=$(expr $hw / 2)
t=$(expr $hh / 2)


i3-msg border pixel 1
i3-msg move position $l $t
i3-msg resize set width $hw px
i3-msg resize set height $hh px
i3-msg mode "default"
