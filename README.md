# Figma Design Tokens on html

Simple Figma Design Tokens implementation on html 

## NPM Tools:

* sass
* style-dictionary
* token-transformer

## Main Files!

* index.html
* style/index.sass
* style-dictionary/original-tokens.json

## Scripts:

```bash
# style-dictionary/build.sh
npm install -g style-dictionary # req
npm install -g token-transformer # req
rm -rf tokens/* # delete current token
cp original-tokens.json tokens/. # copy new token from figma
token-transformer tokens/tokens.json tokens/styledict.json --expandTypography=true --expandShadow=true # transform with expansions
rm -f tokens/tokens.json # delete transformed token
style-dictionary build . # rebuild styles
```

```bash
# ./sass-build-watch.sh
npm install -g sass # req
sass --watch style:public # transpile sass to css
```

## Shows:

![example](./img/example.png)

## Refs:

* https://docs.tokens.studio/
