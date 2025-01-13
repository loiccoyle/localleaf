#!/bin/bash

shopt -s extglob

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
CMD="$SCRIPT_DIR/../localleaf"
ERROR_COUNT=0

cleanup() {
    rm -f "$SCRIPT_DIR/project/"!(main.tex)
}
trap cleanup EXIT

# Run the test.
# The test function should set the TEST_NAME and TEST_DESC variables.
# Increments the ERROR_COUNT variable on failure.
#
# Args:
#   $1: test function.
run() {
    local status
    if "$@"; then
        status=✅
    else
        status=❌
        ERROR_COUNT=$((ERROR_COUNT + 1))
    fi
    printf "%s\n%s: %s\n" "$TEST_DESC" "$TEST_NAME" "$status"
    cleanup
}

test_build() {
    local engine="$1"
    TEST_NAME="${FUNCNAME[0]}"
    TEST_DESC="Build a basic .tex file once, should generate a pdf with engine: $engine."

    "$CMD" -1 -e "$engine" -m "$SCRIPT_DIR"/project/main.tex "$SCRIPT_DIR"/project
    [ -f "$SCRIPT_DIR/project/main.pdf" ]
}

for engine in "latex" "pdflatex" "xelatex" "lualatex"; do
    run test_build "$engine"
done

exit $ERROR_COUNT
