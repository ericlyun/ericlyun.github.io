---
title: "Software Release"
permalink: /software/
author_profile: true
---

## [FlexTensor [ASPLOS’20]](https://github.com/KnowingNothing/FlexTensor)

FlexTensor is a schedule exploration and optimization framework for tensor computation on heterogeneous systems. FlexTensor can optimize tensor computation programs without human interference, allowing programmers to only work on high-level programming abstraction without considering the hardware platform details. FlexTensor systematically explores the optimization design spaces that are composed of many different schedules for different hardware and automatically generate optimized code for different hardware. For design space search, FlexTensor uses heuristic and machine learning method to find the optimized schedule configuration. Our experiment evaluation results show that FlexTensor achieves better performance than the hand optimized libraries such as cuDNN on GPUs and MKL on CPUs. 

## [C-LSTM [FPGA’18]](https://github.com/shvo/C-LSTM)

C-LSTM is a structured compression and implementation framework for LSTM on FPGAs. C-LSTM not only reduces the LSTM model size but also eliminates the irregularities of computation and memory accesses. It employs block-circulant instead of sparse matrices to compress weight matrices and reduces the storage requirement from O(k^2) to O(k). Fast Fourier Transform algorithm is utilized to further accelerate the inference by reducing the computational complexity from O(k^2) to O(klogk). C-LSTM achieves up to 18.8X and 33.5X gains for performance and energy efficiency compared with the state-of-the-art LSTM implementation under the same experimental setup, and the accuracy degradation is very small.

## [Batched\_GEMM [PPoPP’19, Best Paper Award Nomination]](https://github.com/LiXiuhong/batched_gemm)

GEMM is an important kernel for machine learning and scientific application. In practices, we find out that the existing libraries such as cuDNN and MKL yield high performance only when the matrix size is large and there are sufficient parallelism. However, in many real-world applications especially deep learning domains, the matrix size is small. We develop Batched\_GEMM which is a coordinated tiling and batching framework for accelerating GEMM on GPUs. Our experiment evaluation results show that our framework can achieve about 40% performance speedup over the state-of-the-art work.

## [CuLDA [HPDC’19]](https://github.com/cuMF/culda_cgs)

CuLDA is a CUDA-based solution for CGS-based LDA sampling problems on GPUs. It can efficiently solve LDA problems at high throughput. We first delicately design workload partitioning and syn-chronization mechanism to exploit multiple GPUs. Then, we offload the LDA sampling process to each individual GPU by optimizing from the sampling algorithm, parallelization, and data compression perspectives.

## [CuMF\_SGD [HPDC’17]](https://github.com/cuMF/cumf_sgd)

CuMF\_SGD is a CUDA-based SGD solution for large-scale matrix factorization (MF) problems on GPUs. CuMF\_SGD is able to solve MF problems with one or multiple GPUs within one single node. It employs batch-Hogwild! algorithm to parallelize the SGD updates withn one GPU and then parallelize the workload on multiple GPUs. It also leverages our previous techniques such cache bypassing [HPCA’15] and register allocation to optimize the kernels for SGD update.

