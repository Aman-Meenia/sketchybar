#!/bin/bash

# # spaces
# spaces=("1:term" "2:web" "3:mail" "4" "5" "6" "7" "8" "9")
# for name in ${spaces[@]}; do
#     sid=${name:0:1}
#     sketchybar --add space space.$sid left \
#                --set space.$sid \
#                      space=$sid \
#                      icon=$name \
#                      icon.padding_left=6 \
#                      icon.padding_right=6 \
#                      icon.highlight_color=$COLOR[red] \
#                      background.padding_left=0 \
#                      background.padding_right=0 \
#                      background.color=$COLOR[bg_selected] \
#                      background.drawing=off \
#                      script=$PLUGIN_DIR/space.sh \
#                      label.drawing=off \
#                      icon.font=$FONT_SANS_SERIF:16.0 \
#                      click_script="yabai -m space --focus $sid"
# done

SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)

for sid in "${SPACE_SIDS[@]}"
do
  sketchybar --add space space.$sid left                                 \
             --set space.$sid space=$sid                                 \
                              icon=$sid                                  \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              label.padding_right=20                     \
                              label.y_offset=-1                          \
                              script="$PLUGIN_DIR/space.sh"              
done

sketchybar --add item space_separator left                             \
           --set space_separator icon="􀆊"                                \
                                 icon.color=$ACCENT_COLOR \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$PLUGIN_DIR/space_windows.sh" \
           --subscribe space_separator space_windows_change                           
