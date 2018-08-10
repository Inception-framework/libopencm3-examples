#!/bin/bash

rm -rf libopencm3-examples

git clone https://github.com/libopencm3/libopencm3-examples.git
cd libopencm3-examples && git checkout bcf608fa54197ca3485e8136d1696f9d25927ca6

git apply  --stat  ../inception_support.patch
git apply  --check  ../inception_support.patch
git apply  --whitespace=fix  ../inception_support.patch
