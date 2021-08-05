#!/bin/bash

eval $(i3-msg -t get_workspaces | jq -r '.[] | select(.focused == true).rect | to_entries | .[] | .key + "=" + (.value|tostring)')

i3-msg border pixel 0
i3-msg move position $x $y
i3-msg resize set width $width px
i3-msg resize set height $height px
i3-msg mode "default"
