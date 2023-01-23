#!/bin/env bash
# Run all the tests and maintain a count of the failures.
# Exit code is the number of failed tests.

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
ERROR_COUNT=0

for tests in "$SCRIPT_DIR"/test_*.sh; do
    printf "Running %s\n" "$tests"
    $tests
    ERROR_COUNT=$((ERROR_COUNT + $?))
done

exit "$ERROR_COUNT"
