#/bin/bash

EXERCISE_NUMBER=$1

#Make sure there's an exercise numer
if [[ $# -eq 0 ]] ; then
    echo 'This baby needs an argument. Put in the filename you want.'
    exit 1
fi

#Make a new file for the exercise if one doesn't exist
if [ ! -f "$EXERCISE_NUMBER.rkt" ]
  then cat newExerciseTemplate.rkt >> $EXERCISE_NUMBER.rkt
fi

#Run it with entr
ls $EXERCISE_NUMBER.rkt | entr -c racket $EXERCISE_NUMBER.rkt
