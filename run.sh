#!/bin/bash

cd /root/$1
swift build -c release
.build/release/$2
