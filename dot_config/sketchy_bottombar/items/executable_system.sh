### cpu Widget ###
sketchy_bottombar --add item  cpu right                                                   \
           --set cpu   update_freq=30                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=2                                      \
                       icon.color=0xfff6768e                                       \
                       icon.y_offset=1                                             \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=0xffdfe1ea                                      \
                       label.padding_right=4                                       \
                       background.height=33                                      \
                       background.padding_right=3                                  \
                        background.corner_radius=15                       \
                       script="$PLUGIN_DIR/cpu.sh"                                 \
                       icon.padding_left=6 label.padding_right=6                  \

### mem Widget ###
sketchy_bottombar --add item  mem right                                                   \
           --set mem   update_freq=30                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=2                                      \
                       icon.color=0xff4ed2e3                                       \
                       icon.y_offset=1                                              \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=0xffdfe1ea                                      \
                       label.padding_right=4                                       \
                       background.height=33                                      \
                       background.corner_radius=20                                   \
                       background.padding_right=3                                  \
                       script="$PLUGIN_DIR/mem.sh"                                 \
                       icon.padding_left=6 label.padding_right=6                  \

### ssd Widget ###
sketchy_bottombar --add item  ssd right                                                   \
           --set ssd   update_freq=30                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=2                                      \
                       icon.color=0xfffbc02d                                       \
                       icon.y_offset=1                                              \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=0xffdfe1ea                                      \
                       label.padding_right=4                                       \
                       background.height=33                                      \
                       background.corner_radius=20                                   \
                       background.padding_right=3                                  \
                       script="$PLUGIN_DIR/disk.sh"                                 \
                       icon.padding_left=6 label.padding_right=6                  \



                       
