#!/bin/bash

for d in $(ls ./kitchen_demos_multitask/);
do
    echo $d
    python parse_demos.py \
       --env kitchen_relax-v1 \
       --demo_dir ./kitchen_demos_multitask/$d/ \
       --view playback \
       --skip 40
done

echo "Combining all the parsed demonstrations into a single file"
python combine_demos.py --demo_dir ./kitchen_demos_multitask --env kitchen_relax-v1

# python parse_demos.py \
#        --env kitchen_relax-v1 \
#        --demo_dir ./kitchen_demos_multitask/postcorl_microwave_bottomknob_switch_slide/ \
#        --view playback \
#        --render None \
#        --skip 40