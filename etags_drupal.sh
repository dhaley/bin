#!/bin/sh

find . -type f \( -name "*.module" -o -name "*.install" -o -name "*.inc" -o -name "*.php" \) -print | etags --language=php -
