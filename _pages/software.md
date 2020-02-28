---
title: "Software Release"
permalink: /software/
author_profile: true
---

## [CuLDA [HPDC’19]](https://github.com/cuMF/culda_cgs)

CuLDA is a CUDA-based solution for CGS-based LDA sampling problems on GPUs. It can efficiently solve LDA problems at high throughput. We first delicately design workload partitioning and syn-chronization mechanism to exploit multiple GPUs. Then, we offload the LDA sampling process to each individual GPU by optimizing from the sampling algorithm, parallelization, and data compression perspectives. 

## [CuMF\_SGD [HPDC’17]](https://github.com/cuMF/cumf_sgd)

CuMF\_SGD is a CUDA-based SGD solution for large-scale matrix factorization (MF) problems on GPUs. CuMF\_SGD is able to solve MF problems with one or multiple GPUs within one single node. It employs batch-Hogwild! algorithm to parallelize the SGD updates withn one GPU and then parallelize the workload on multiple GPUs. It also leverages our previous techniques such cache bypassing [HPCA’15] and register allocation to optimize the kernels for SGD update. 

