#! /bin/bash

git clone https://github.com/yunjey/StarGAN.git
cd stargan/

# env
# aclgan

# train
# change celeba_image_dir, attr_path
CUDA_VISIBLE_DEVICES=0 python main.py --mode train --dataset CelebA --image_size 256 --c_dim 1 \
               --sample_dir stargan_male2female/samples --log_dir stargan_male2female/logs \
               --model_save_dir stargan_male2female/models --result_dir stargan_male2female/results \
               --selected_attrs Male --batch_size 3 --num_iters 350000 --num_iters_decay 350000 \
               --celeba_image_dir /raid/wuruihai/ZYH/datasets/celebA/img_align_celeba \
               --attr_path /raid/wuruihai/ZYH/datasets/celebA/list_attr_celeba.txt \
               --model_save_step 50000 --lr_update_step 100000