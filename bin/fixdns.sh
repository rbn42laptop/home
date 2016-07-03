#!/bin/bash
sudo sh -c 'echo nameserver 127.0.0.1 > /etc/resolv.conf'
sudo sh -c 'echo nameserver 8.8.8.8 >> /etc/resolv.conf'
sudo sh -c 'echo search home >> /etc/resolv.conf'
