function run
    g++ $argv -Wall -DLOCAL -o exc 
    ./exc < i.inp
end
