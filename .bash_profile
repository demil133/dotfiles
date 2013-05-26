#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Starts X at login
[[ -z $DISPLAY && XDG_VTNR -eq 2 ]] && exec startx

export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.3/site-packages

# Defines the default browser for the X
if [ -n "$DISPLAY" ]; then
    BROWSER=chromium
else
    BROWSER=links
fi
