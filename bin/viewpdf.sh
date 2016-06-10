#!/bin/bash
pdftohtml -q  $1 /dev/shm/temp.html
elinks /dev/shm/temp.html
