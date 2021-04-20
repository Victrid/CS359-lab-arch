#!/bin/bash
correct=0
failed=0
total=0
for file in "$@"
do
    if grep -q "ISA Check Succeeds" "$file"; then
    ((correct++))
    fi
    if grep -q "ISA Check Fails" "$file"; then
    ((failed++))
    fi
    ((total++))
done

if ((correct+failed==total && failed == 0)); then
    echo "  All $total ISA Checks Succeed"
    exit 0
else
    echo "  $failed/$total ISA Checks Failed"
    if ((correct+failed!=total)); then
        echo "    $((total-correct-failed))/$total ISA Checks missing output"
    fi
    exit 1
fi
