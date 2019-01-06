#!/bin/bash

two_vel_13 () {
    mkdir v1 v3
    mv -v *v1*.wav v1 
    mv -v *v3*.wav v3
}

two_vel_12 () {
    mkdir v1 v2
    mv -v *v1*.wav v1 
    mv -v *v2*.wav v2
}

three_vel () {
    mkdir v1 v2 v3
    mv -v *v1*.wav v1 
    mv -v *v2*.wav v2 
    mv -v *v3*.wav v3
}

four_vel () {
    mkdir v1 v2 v3 v4
    mv -v *v1*.wav v1 
    mv -v *v2*.wav v2 
    mv -v *v3*.wav v3
    mv -v *v4*.wav v4
}

three_vel_rr () {
    for v in 1 2 3 ; do
        for rr in 1 2; do
            mkdir v${v}r${rr}/
        done
    done

    for v in 1 2 3 ; do
        for rr in 1 2; do
            mv -v *_v${v}_[rR][rR]${rr}*.wav *_v${v}_${rr}.wav v${v}r${rr}/
        done
    done
}

two_vel_rr () {
    for v in 1 2  ; do
        for rr in 1 2; do
            mkdir v${v}r${rr}/
        done
    done

    for v in 1 2  ; do
        for rr in 1 2; do
            mv -v *_v${v}_[rR][rR]${rr}*.wav *_v${v}_${rr}.wav v${v}r${rr}/
        done
    done
}

two_vel_four_rr () {
    for v in 1 2; do
        for rr in 1 2 3 4; do
            mkdir v${v}r${rr}/
        done
    done

    for v in 1 2; do
        for rr in 1 2 3 4; do
            mv -v *_v${v}_[rR][rR]${rr}*.wav *_v${v}_${rr}.wav v${v}r${rr}/
        done
    done
}

four_vel_rr () {
    for v in 1 2 3 4; do
        for rr in 1 2; do
            mkdir v${v}r${rr}/
        done
    done

    for v in 1 2 3 4; do
        for rr in 1 2; do
            mv -v *_v${v}_[rR][rR]${rr}*.wav *_v${v}_${rr}.wav v${v}r${rr}/
        done
    done
}

piano_vel_rr () {
    for v in pp p mf f; do
        for rr in 1 2; do
            mkdir ${v}-r${rr}/
        done
    done

    for v in pp p mf f; do
        for rr in 1 2; do
            mv -v *_${v}_RR${rr}*.wav ${v}-r${rr}/
        done
    done
}

cd "Brass/Trumpet/sus"
two_vel_13

cd - && cd "Brass/Trumpet/stac"
three_vel_rr

cd - && cd "Brass/Trumpet/straightM-sus"
two_vel_13

cd - && cd "Brass/Trumpet/susvib"
two_vel_12

cd - && cd "Brass/Trumpet/harmonM-sus"
two_vel_13

cd - && cd "Brass/Tenor Trombone/sus"
three_vel

cd - && cd "Brass/Tenor Trombone/stac"
four_vel_rr

cd - && cd "Brass/Tenor Trombone/vib"
mkdir r1 r2
mv *_1.wav r1
mv *_2.wav r2

cd - && cd "Brass/Tuba/sus"
three_vel

cd - && cd "Brass/Tuba/stac"
two_vel_four_rr

cd - && cd "Brass/F Horn/sus"
four_vel

cd - && cd "Brass/F Horn/stac"
three_vel_rr

cd - && cd "Brass/F Horn/mute"
three_vel

cd - && cd "Keys/Organ/Quiet"
mkdir pedal man3
mv -v *_Man3*.wav man3
mv -v *_Pedal*.wav pedal

cd - && cd "Keys/Organ/Loud"
mkdir pedal man3
mv -v *_Man3*.wav man3
mv -v *_Pedal*.wav pedal

cd - && cd "Keys/Upright Piano"
echo ok

cd - && cd "Keys/Upright Nr1"
piano_vel_rr


cd - && cd "Strings/Cello Section/trem"
two_vel_12

cd - && cd "Strings/Cello Section/susvib"
two_vel_13

cd - && cd "Strings/Cello Section/pizzT"
two_vel_rr

cd - && cd "Strings/Cello Section/spic"
two_vel_rr

cd - && cd "Strings/Harp"
mkdir mp mf f
mv -v *_mp.wav mp/
mv -v *_mf.wav mf/
mv -v *_f.wav f/

cd - && cd "Strings/Solo Contrabass/Trem"
two_vel_12

cd - && cd "Strings/Solo Contrabass/SusVib"
two_vel_13

cd - && cd "Strings/Solo Contrabass/SusNV"
two_vel_13

cd - && cd "Strings/Solo Contrabass/Pizz"
three_vel_rr

cd - && cd "Strings/Solo Contrabass/Spic"
three_vel_rr

cd - && cd "Strings/Violin Section/Trem"
two_vel_12

cd - && cd "Strings/Violin Section/susVib"
two_vel_12

cd - && cd "Strings/Violin Section/Pizz"
three_vel_rr

cd - && cd "Strings/Violin Section/Spic"
three_vel_rr

cd - && cd "Strings/Viola Section/trem"
two_vel_12
cd - && cd "Strings/Viola Section/susvib"
two_vel_12
cd - && cd "Strings/Viola Section/pizz"
three_vel_rr
cd - && cd "Strings/Viola Section/spic"
three_vel_rr

cd - && cd "Strings/Solo Violin/Trem"
two_vel_12

cd - && cd "Strings/Solo Violin/Arco Vib"
mkdir p f
mv -v *_p.wav p/
mv -v *_f.wav f/

cd - && cd "Strings/Solo Violin/Pizz"
piano_vel_rr

cd - && cd "Strings/Solo Violin/spic"
three_vel_rr

cd - && cd "Woodwinds/Bassoon/sus"
two_vel_12
cd - && cd "Woodwinds/Bassoon/stac"
three_vel_rr
cd - && cd "Woodwinds/Bassoon/vib"
two_vel_12

cd - && cd "Woodwinds/Clarinet/stac"
three_vel_rr
cd - && cd "Woodwinds/Clarinet/susLong"
three_vel_rr
cd - && cd "Woodwinds/Oboe/Sus"
two_vel_13
cd - && cd "Woodwinds/Oboe/Vib"
two_vel_13
cd - && cd "Woodwinds/Oboe/Stacc"
three_vel_rr

cd - && cd "Woodwinds/Piccolo/Sus"
cd - && cd "Woodwinds/Piccolo/Stac"

cd - && cd "Woodwinds/Flute/stac"
four_vel_rr
cd - && cd "Woodwinds/Flute/susvib"
mkdir r1 r2
mv *_1.wav r1
mv *_2.wav r2
cd - && cd "Woodwinds/Flute/expvib"
mkdir r1 r2
mv *_1.wav r1
mv *_2.wav r2
cd - && cd "Woodwinds/Flute/susNV"
three_vel

# # HERE SD BATCH


#cd - && cd "VSCO 1 Percussion/varWood/Camo's Shaker"
#cd - && cd "VSCO 1 Percussion/varWood/log_drum"
#cd - && cd "VSCO 1 Percussion/varWood"
#cd - && cd "VSCO 1 Percussion/drums/snare/drum3_marching"
#cd - && cd "VSCO 1 Percussion/drums/snare/drum1"
#cd - && cd "VSCO 1 Percussion/drums/snare/OldSnare"
#cd - && cd "VSCO 1 Percussion/drums/snare/drum2"
#cd - && cd "VSCO 1 Percussion/drums/other/Bongos"
#cd - && cd "VSCO 1 Percussion/drums/other/ethnic/giant/hand"
#cd - && cd "VSCO 1 Percussion/drums/other/ethnic/giant/mallet"
#cd - && cd "VSCO 1 Percussion/drums/other/ethnic/giant/sticks"
#cd - && cd "VSCO 1 Percussion/drums/other/ethnic/giant"
#cd - && cd "VSCO 1 Percussion/drums/other/ethnic/congo/muted"
#cd - && cd "VSCO 1 Percussion/drums/other/ethnic/congo/open"
#cd - && cd "VSCO 1 Percussion/drums/bass"
#cd - && cd "VSCO 1 Percussion/drums/tenor/tenor_higher"
#cd - && cd "VSCO 1 Percussion/drums/tenor/tenor_lower"
#cd - && cd "VSCO 1 Percussion/varMetal/Cymbals/clash"
#cd - && cd "VSCO 1 Percussion/varMetal/Cymbals/susp"
#cd - && cd "VSCO 1 Percussion/varMetal/triangle/1"
#cd - && cd "VSCO 1 Percussion/varMetal/triangle/4"
#cd - && cd "VSCO 1 Percussion/varMetal/triangle/3"
#cd - && cd "VSCO 1 Percussion/varMetal/triangle/2"
#cd - && cd "VSCO 1 Percussion/varMetal/various"
#cd - && cd "VSCO 1 Percussion/varMetal/Gong"



# cd - && cd "Brass/OldTrombone/Vibrato"
# mkdir r1 r2 r3
# mv *_1.wav r1
# mv *_2.wav r2
# mv *_3.wav r3

# cd - && cd "Brass/OldTrombone/Short"
# cd - && cd "Brass/OldTrombone/Fall"
# cd - && cd "Brass/OldTrombone/Sustain"
# cd - && cd "Brass/OldTrombone/Buzz"


#cd - && cd "Miscellania Raw/Misc 1"
#cd - && cd "Miscellania Raw/Misc 2/glock_glisses"
#cd - && cd "Miscellania Raw/Misc 2/NepaleseBells"
#cd - && cd "Miscellania Raw/Misc 2"
#cd - && cd "Percussion/temp"
#cd - && cd "Percussion/Marimba"
#cd - && cd "Percussion/Timpani/Rolls"
#cd - && cd "Percussion/Timpani"
#cd - && cd "Percussion/Glock"
#cd - && cd "Percussion/Xylo"
#cd - && cd "Percussion"
