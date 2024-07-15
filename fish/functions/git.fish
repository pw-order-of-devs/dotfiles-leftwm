#!/usr/bin/env fish
function gl
    git add . && git commit -a
end

function gm
    git add . && git commit -m $argv
end

function gmp
    git add . && git commit -m $argv && git push origin HEAD
end

function gmpnv
    git add . && git commit -m $argv --no-verify && git push origin HEAD
end

function pull
    git fetch --all && git pull origin HEAD
end

function push
    git push origin HEAD
end
