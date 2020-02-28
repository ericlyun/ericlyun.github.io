---
title: "Software Release"
permalink: /software/
author_profile: true
---

## [GEMM\_ML](https://github.com/LiXiuhong/batched_gemm) [PPoPP’19, Best Paper Award Nomination]

GEMM is an important kernel for machine learning and scientific application. In practices, we find out that the existing libraries such as cuDNN and MKL yield high performance only when the matrix size is large and there are sufficient parallelism. However, in many real-world applications especially deep learning domains, the matrix size is small. We develop GEMM_ML, which is a coordinated tiling and batching framework for accelerating GEMM on GPUs. Our experiment evaluation results show that our framework can achieve about 40% performance speedup over the state-of-the-art work.

## [CuLDA [HPDC’19]](https://github.com/cuMF/culda_cgs)

CuLDA is a CUDA-based solution for CGS-based LDA sampling problems on GPUs. It can efficiently solve LDA problems at high throughput. We first delicately design workload partitioning and syn-chronization mechanism to exploit multiple GPUs. Then, we offload the LDA sampling process to each individual GPU by optimizing from the sampling algorithm, parallelization, and data compression perspectives.

## [CuMF\_SGD [HPDC’17]](https://github.com/cuMF/cumf_sgd)

CuMF\_SGD is a CUDA-based SGD solution for large-scale matrix factorization (MF) problems on GPUs. CuMF\_SGD is able to solve MF problems with one or multiple GPUs within one single node. It employs batch-Hogwild! algorithm to parallelize the SGD updates withn one GPU and then parallelize the workload on multiple GPUs. It also leverages our previous techniques such cache bypassing [HPCA’15] and register allocation to optimize the kernels for SGD update.

