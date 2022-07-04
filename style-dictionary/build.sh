#!/bin/bash
npm install -g style-dictionary
npm install -g token-transformer
rm -rf tokens/*
cp original-tokens.json tokens/.
token-transformer tokens/tokens.json tokens/styledict.json --expandTypography=true --expandShadow=true
rm -f tokens/tokens.json
style-dictionary build .