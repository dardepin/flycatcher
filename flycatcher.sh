#!/bin/bash
#fychatcher ultility: deleting all .fly entries in home dir
#usage: sudo ./flycatcher

find /home -type d,l -name '.fly' -execdir rm -rf {} \; > /dev/null 2>&1