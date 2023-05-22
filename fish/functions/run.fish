function run
    g++ -Wall -std=c++14 -O2 -DLOCAL -s -pipe -o a $argv && ./a
end
