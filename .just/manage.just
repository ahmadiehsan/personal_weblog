import "_share.just"
import "_working_dir.just"

build:
    hugo --gc --minify

server:
    hugo server
