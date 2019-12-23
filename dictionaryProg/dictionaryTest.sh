#!/bin/bash -x

declare -A sounds;
sounds[dog]="bark";
sounds[cat]="meow";
sounds[bird]="tweet";
sounds[abc]="xyz";

echo "DOG SOUND : "${sounds[dog]};
echo "ALL ANIMAL SOUND : "${sounds[@]};
echo "ANIMAL KEYS: "${!sounds[@]}
echo "NUMBER OF ELEMENTS: "${#sounds[@]}

unset ${sounds[abc]};
echo "ALL ANIMAL SOUND : "${sounds[@]};
