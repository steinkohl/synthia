#!/bin/bash
/usr/bin/a2j_control --ehw && /usr/bin/a2j_control --start
pactl load-module module-jack-sink channels=2
pactl load-module module-jack-source channels=2
pacmd set-default-sink jack_out
pacmd set-default-source jack_in

