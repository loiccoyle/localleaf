#!/bin/bash

shopt -s extglob

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
CMD="$SCRIPT_DIR/../localleaf"
ERROR_COUNT=0

cleanup() {
    rm -f "$SCRIPT_DIR/project/"!(main.tex)
}
trap cleanup EXIT

printf "Running test\n"

"$CMD" -o "$SCRIPT_DIR"/project "$SCRIPT_DIR"/project/main.tex

if [ ! -f "$SCRIPT_DIR/project/main.pdf" ]; then
    echo "❌ No pdf file"
    ERROR_COUNT=$((ERROR_COUNT + 1))
fi

exit $ERROR_COUNT
