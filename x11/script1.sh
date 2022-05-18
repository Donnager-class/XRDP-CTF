#!/bin/bash
docker run -it -d --name x11box-active -v /data/projects:/projects -p 3389:3389 x11box
