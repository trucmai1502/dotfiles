function run
    g++ $argv -Wall -DLOCAL -o exc
    time ./exc 
end

alias nvim "lvim"
