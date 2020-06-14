---
title: "Research"
permalink: /research/
author_profile: true
---

## Machine Learning Application Acceleration using Heterogeneous System

<img style="float: right; margin: 10px;" src="/images/research-1.png">

In general, to deploy a machine learning application, it involves two scenarios: training and inference. Both training and inference are computation-intensive processes, which need high performance heterogeneous computing to support. My research group is investigating efficient hardware and software approaches for the ML applications.     

Specifically, we are exploring highly-parallel GPUs for accelerating the training scenario and programmable FPGAs for accelerating the inference scenario. On the GPU side, we have developed parallel algorithms, programming interface, compiler optimization, HPC libraries for ML applications including Matrix factorization (HPDC’17), Image Reconstruction (ICS’18), Latent Dirichlet Allocation (LDA) (HPDC’19). On the FPGA side, we have developed 1) spatial architecture and mapping techniques (DAC’17-systolic, ICCAD’18, DAC’19), 2) fast algorithms for dense and sparse convolutions (FCCM’17, DAC’18, FCCM’19), 3) co-design solutions for specific applications including LSTM and Yolo (FPGA’18, FPGA’19), 4) tool-chains including automated deployment tools and an efficient library that assembles different convolution algorithms (DAC’17, ICCAD’19, DAC’20). We are also among the first to use systolic array architecture and fast algorithms for accelerating DNNs on FPGAs (DAC’17-systolic, best paper nomination, FCCM’17).

## Architecture Design, Compilation Optimization, and Performance modeling for Heterogeneous System

While the benefit of heterogeneous systems in clear, the performance optimization and tuning is a heavy lifting task as the programmers need to manually manage the hardware components e.g. cores, reconfigurable logic, cache, register, and shared memory within a single platform, and schedule the workload across the heterogeneous platforms such as FPGAs, GPUs, and CPUs. The heterogeneity in architecture and programming model adds further complexity, which makes it difficult for performance portability. 

We propose a full-stack of hardware and software approaches across algorithm, compiler, and architecture layers to maximize the performance of heterogeneous system. For a single node, we have designed novel cache bypassing architecture based on the compiler hints (HPCA’15) for GPUs; we have designed novel register allocation algorithm that strikes a balance between single thread performance and thread level parallelism (MICRO’15) for GPUs. For large-scale datacenter, we developed Poly, an OpenCL based heterogeneous system optimization framework that targets to improve the overall throughput scalability and energy proportionality while guaranteeing the QoS by efﬁciently utilizing GPUs and FPGAs. Poly leverages on compile-time pattern analysis and run-time task scheduler (HPCA’19).

