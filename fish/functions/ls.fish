function ls
    switch (uname)
    case Darwin
        gls --color=auto $argv
    case Linux
        ls --color=auto $argv
    end
end
