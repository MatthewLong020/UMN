#!/bin/bash

gcc -no-pie -fno-stack-protector -Og -g -Wall \
$(pkg-config --cflags gtk+-3.0) \
Fixedbcimgview.c -o Fixedbcimgview \
-lgtk-3 -lgobject-2.0 -lglib-2.0 -lgdk_pixbuf-2.0 -lm
