function monitor
    command monitor $argv
    set stat = $argv[1]
    switch (stat)
        case on
            xrandr --output HDMI-A-0 --on --right-of eDP
        case off
            xrandr --output HDMI-A-0 --off
    end
end
