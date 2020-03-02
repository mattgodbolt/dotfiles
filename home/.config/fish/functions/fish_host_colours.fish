# Defined in - @ line 2
function fish_host_colours
	set colors Breeze
    switch (hostname)
        case 'cy2-ubuntu-*'
            set colors "RedOnBlack"
    end
    printf "\033]50;%s\a" "colors=$colors"
end
