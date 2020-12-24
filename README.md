# Fast Adversarial Training on FaceForensics++

This repository is directly taken from [Fast adversarial training using FGSM](https://github.com/locuslab/fast_adversarial) by Wong, et. al. I adapted the code to be used for the [FaceForensics++ Dataset](https://github.com/ondyari/FaceForensics) <br>

Taken from the original repository:

> "The framework used is a modified version of the [Free Adversarial Training](https://github.com/mahyarnajibi/FreeAdversarialTraining/blob/master/main_free.py) repository, which in turn was adapted from the [official PyTorch repository](https://github.com/pytorch/examples/blob/master/imagenet)." <br>

## Installation
Install requirements with `pip install -r requirements.txt`

## Training a model
Taken from original repository (underline denotes my change):
>Scripts to robustly train an <ins>FaceForensics++</ins> classifier for epsilon radii of 2/255 and 4/255 are provided in `run_fast_2px.sh` and `run_fast_4px.sh`. These run the main code module `main_free.py` using the configurations provided in the `configs/` folder. To run the 50 step PGD adversary with 10 restarts, we also provide `run_eval.sh`. All parameters can be modified by adjusting the configuration files in the `configs/` folder. 

## Sample Script
I provide the job submission script I used (**adv_train.pbs**) to start phase 1 of training.
