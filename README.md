# MaRe Benchmarks
This repository contains the code for reporoducing the benchmarks in our manuscript [MaRe: a MapReduce-Oriented Framework for Processing Big Data with Application Containers](https://arxiv.org/abs/1808.02318).

## Building the containers
We automatically buid the containers using [Travis](.travis.yml). The images are publicly available on:
* [mcapuccini/sdsorter](https://hub.docker.com/r/mcapuccini/sdsorter)
* [mcapuccini/alignment](https://hub.docker.com/r/mcapuccini/alignment)

You should rebuild `mcapuccini/oe` image with your own OpenEye license, which you can obtain for free as an academic: https://www.eyesopen.com/academic-licensing. Assuming you have cloned this repository and copied your license in `oe/oe_license.txt`, you can build the container by running: `cd oe; docker build -t yourname/oe .`.

## Deploying the cluster
We provide a [Terraform](https://terraform.io) module to replicate our cluster on any [OpenStack](https://www.openstack.org/) provider: https://github.com/mcapuccini/terraform-openstack-spark. Please follow the instruction in the linked repository. 

## Running the analyses
The analyses are coded as [Apache Zeppelin](https://zeppelin.apache.org) notebooks. The notebooks are located under: [notebooks](notebooks). Please upload the notebooks using the Zeppelin interface, after you deployed the cluster. The analyses can be interactively executed from the interface.
