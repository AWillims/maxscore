#!/bin/bash
# maxscore.sh
# Avery Williams
# CENG298

score_list=()
max=0

echo "Enter 5 scores:"

while true; do
    read -rp "Score: " score
    score_list+=("$score") 

    # Update max while reading
    if [ "${#score_list[@]}" -eq 1 ] || [ "$score" -gt "$max" ]; then
        max=$score
    fi

    if [ "${#score_list[@]}" -eq 5 ]; then
        break
    fi
done

echo "The highest score is $max"
echo "The scores are: ${score_list[*]}"
for score in "${score_list[@]}"; do
    diff=$((max - score))
    echo "Score: $score, Difference: $diff"
done
