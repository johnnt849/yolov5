#!/bin/bash

torchrun --nnodes 1:8 --nproc_per_node=1 --max_restarts 1000 --checkpoint-bucket breeze-checkpoint --steps-per-checkpoint 25 --rdzv_id job-id --rdzv_backend etcd-v2 --rdzv_endpoint 172.31.53.0 elastic_example.py
