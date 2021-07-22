function fish_host_colours --argument name
    set bgcolour 00/00/00
    switch $argv[1]
        case '*-desktop-*'
            set bgcolour 11/22/11
        case '*-cert-*'
            set bgcolour 22/00/33
        case '*-prod-*'
            set bgcolour 33/00/00
    end
    printf "\033]11;rgb:$bgcolour\a"
end
