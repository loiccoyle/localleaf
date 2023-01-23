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
    if $1; then
        status=✅
    else
        status=❌
        ERROR_COUNT=$((ERROR_COUNT + 1))
    fi
    printf "%s\n%s: %s\n" "$TEST_DESC" "$TEST_NAME" "$status"
}

test_build() {
    TEST_NAME="${FUNCNAME[0]}"
    TEST_DESC="Build a basic .tex file once, should generate a pdf."

    "$CMD" -o "$SCRIPT_DIR"/project "$SCRIPT_DIR"/project/main.tex >/dev/null 2>&1
    [ -f "$SCRIPT_DIR/project/main.pdf" ]
}

run test_build

exit $ERROR_COUNT
