#!/bin/bash -e

babel=./node_modules/babel-cli/bin/babel.js

# Clean old dist
rm -rf dist/

# Transpile ES6
$babel -d dist src/ --presets es2015,stage-2 --ignore tests

# Copy package & README
cp README.md dist/
node -p 'p=require("./package");p.scripts=p.devDependencies=undefined;JSON.stringify(p,null,2)' > dist/package.json
