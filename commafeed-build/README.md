# docker image for building commafeed

This image builds commafeed from a local source.
It has all tools required for build installed.
Volume for sources is "/commafeed"

example:

docker run -it -v "<local_repo>:/commafeed" mrsn/commafeed-build

Keep the container to avoid downloading maven repos again and just run container again to compile.

https://registry.hub.docker.com/u/mrsn/commafeed-build/

