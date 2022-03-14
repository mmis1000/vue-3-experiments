#!/bin/bash

echo "Force hoisting dependency because it is not linked by pnpm"
echo "  See: https://github.com/pnpm/pnpm/issues/4407"
vue="$(readlink -f './ssr-vue/node_modules/vue')"
ln -s "$vue" 'node_modules/vue'

vite="$(readlink -f './ssr-vue/node_modules/vite')"
ln -s "$vite" 'node_modules/vite'

echo "Building vue from source..."

cd core
pnpm run build