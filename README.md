# bsz-i3blocklets
### My own i3blocks widgets/blocklets

## nvidia
Displays GPU utilization, hardware video decoder utilization, and memory usage.

### Requirements
    * GNU `bash`
    * `nvidia-smi`

### Variables
    * `GPU_ID:` Which GPU to fetch stats from. Default 0
    * `SEPARATOR:` Separates different fields in long display. Default "|"
    * `COLOR_IDLE:` Hex code for color displayed when GPU is idle. Default "#2EAFFF"
    * `COLOR_ERROR:` Hex code for error message color. Default "#FF898E"

## ompl-status
Displays a given tagstring with playback controls for the OMPL music player

### Requirements
    * [OMPL](https://github.com/Beinsezii/ompl)

### Variables
    * `ICON_PAUSE` `ICON_PLAY` `ICON_STOP` icons to display for different player states. All default to ""
    * `COLOR_PAUSE` `COLOR_PLAY` `COLOR_STOP` colors for different player states. Defaults...
        * `COLOR_PAUSE`: "#2EAFFF"
        * `COLOR_PLAY`: "#73BC6F"
        * `COLOR_STOP`: ""

    * `COLOR_ERROR:` Hex code for error message color. Default "#FF898E"

## F.A.Q.
Question|Answer
---|---
WTF about [i3blocks-widgets-rs](https://github.com/Beinsezii/i3blocks-widgets-rs)???|Discontinued. Future updates will go here. Having to recompile everything just to change a regex pattern was pain. Writing the code was easier, deploying was way harder.
Some of these already exist in [i3blocks-contrib](https://github.com/vivien/i3blocks-contrib) you fucking waste of clock cycles. By creating your own repository that makes little of all those who came before you, not only do you smear their name by indirectly saying their contributions aren't good enough for you, but you also show little regard for the current climate crisis with your blatant disrepesct for thermoelectric efficiency. In fact this whole project reeks of "I'm ignorant to the current socio-economic and political happenings of the world". You were so busy trying to be a wolf that you wrapped back around into becoming a sheep. It's so pathetic I almost pity you. Almost.|strawman ouroboros
