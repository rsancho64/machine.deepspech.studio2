#! /usr/bin/bash
#!"C:\Python33\python.exe". # ajustar esto

## train deepspeech on your own data 
python3 DeepSpeech.py \
--n_hidden 2048 \
--checkpoint_dir fine_tuning_checkpoints/ \
--epochs 3 \
--train_files training_csvs/train.csv \
--dev_files training_csvs/dev.csv \
--test_files training_csvs/test.csv \
--learning_rate 0.0001 \
--export_dir output_models/ \
--use_allow_growth true \
--use_cudnn_rnn true

## --n_hidden : Number of hidden layers in network
## --checkpoint_dir : Folder path to store checkpoints 
## --epochs : Number of Epochs 
## --train_files : Path to training CSV
## --dev_files : Path to dev CSV
## --test_files : Path to test CSV 
## --learning_rate : Specify learning rate
## --export_dir : Folder path to store inference model
