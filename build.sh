#!/bin/bash
emcc rc4.c -o public/rc4.js \
  -s EXPORTED_FUNCTIONS='["_rc4_crypt","_malloc","_free"]' \
  -s EXPORTED_RUNTIME_METHODS='["ccall","cwrap","getValue","setValue"]' \
  -s MODULARIZE=1 \
  -s EXPORT_NAME='createRC4Module' \
  -s ALLOW_MEMORY_GROWTH=1