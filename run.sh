#!/bin/bash

cd /root/$1
swift build -c release
/root/$1/.build/release/$2
