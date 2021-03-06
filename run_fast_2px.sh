DATA=../c23_train/crps
VAL=../c23_val/crps

NAME=2px

CONFIG1=configs/configs_fast_${NAME}_phase1.yml
CONFIG2=configs/configs_fast_${NAME}_phase2.yml
CONFIG3=configs/configs_fast_${NAME}_phase3.yml

PREFIX1=fast_adv_phase1_${NAME}
PREFIX2=fast_adv_phase2_${NAME}
PREFIX3=fast_adv_phase3_${NAME}

OUT1=fast_train_phase1_${NAME}.out
OUT2=fast_train_phase2_${NAME}.out
OUT3=fast_train_phase3_${NAME}.out

EVAL1=fast_eval_phase1_${NAME}.out
EVAL2=fast_eval_phase2_${NAME}.out
EVAL3=fast_eval_phase3_${NAME}.out

END1=~/FastAdversarialTraining/trained_models/fast_adv_phase1_${NAME}_step2_eps2_repeat1/checkpoint_epoch6.pth.tar
END2=~/FastAdversarialTraining/trained_models/fast_adv_phase2_${NAME}_step2_eps2_repeat1/checkpoint_epoch12.pth.tar
END3=~/FastAdversarialTraining/trained_models/fast_adv_phase3_${NAME}_step2_eps2_repeat1/checkpoint_epoch15.pth.tar

# training for phase 1
python -u main_fast.py $DATA $VAL -c $CONFIG1 --output_prefix $PREFIX1 | tee $OUT1

# training for phase 2
#python -u main_fast.py $DATA352 -c $CONFIG2 --output_prefix $PREFIX2 --resume $END1 | tee $OUT2

# training for phase 3
#python -u main_fast.py $DATA -c $CONFIG3 --output_prefix $PREFIX3 --resume $END2 | tee $OUT3

