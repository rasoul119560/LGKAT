
# A novel recommender system using light graph convolutional network and personalized knowledge-aware attention sub-network
 
This is our implementation for the following paper:

>Rasoul Hassanzadeh, Vahid Majidneghad, Bahman Arasteh


Corresponding Author: Vahid Majidneghad (vahid.majidnezhad at iau.ac.ir)


## Introduction
Recently, graph neural networks (GNNs) have gained prominence in recommender systems (RS) due to their capability to extract vital features and understand intricate relationships. However, GNNs exhibit limitations in their ability to capture fine-grained semantics in a knowledge graph (KG) and are often insufficient in effectively modeling user-item interactions. One approach to address these limitations is personalized knowledge-aware recommendation. In this paper a novel RS, called LGKAT, is proposed that uses a combination of user-item graph and knowledge graph. It allows for more precise and nuanced modelling of user-item interactions, aiding the recommender system in learning meaningful node representations. One of the contributions of the proposed method is to use a novel integration of light graph convolutional network (LightGCN) in RSs to efficiently manage common signals for user and item embeddings. Another novelty of this paper is to proposed an efficient attention sub-network that encodes rich semantic meanings from the knowledge graph into refined item embeddings in a personalized manner. Extensive tests were conducted on three well-known datasets, demonstrating significant superiority of the proposed method compared to the state-of-the-art methods. The obtained results show that the integration of LightGCN in personalized knowledge-aware recommendation systems can effectively tackle limitations of current recommender systems and improve the quality of recommendations.

## Environment Requirement
The code has been tested running under Python 3.9.12. The required packages are as follows:
* python == 3.9.12
* tensorflow == 2.9.1
* numpy == 1.21.5
* scipy == 1.7.3
* sklearn == 1.0.2

## Examples to Run the code
The instruction of commands has been clearly stated in the code (see src/main.py).

* Movie
```
               
python main.py  --dataset movie --aggregator concat --n_epochs 10 --neighbor_sample_size 4 --dim 32 --n_iter 2 --batch_size 65536 --l2_weight 5e-6 --lr 2e-2 --layer_size [32] --adj_type plain --alg_type lightgcn --model_type KGCN_LightGCN --node_dropout [0.1] --mess_dropout [0.1] --node_dropout_flag 1 --alpha 0 --smoothing_steps 1 --pretrain 0 --att h_ur_t --runs 3 --gpu_id 0
```

* book
```
python main.py --dataset book --aggregator concat --n_epochs 20 --neighbor_sample_size 8 --dim 64 --n_iter 1 --batch_size 256 --l2_weight 2e-5 --lr 5e-5 --layer_size [64] --adj_type norm --alg_type lightgcn --model_type KGCN_LightGCN --node_dropout [0.1] --mess_dropout [0.1] --node_dropout_flag 1 --alpha 0 --smoothing_steps 3 --pretrain 0 --att h_ur_t --runs 3 --gpu_id 0

```

* Music
```
python main.py --dataset music --aggregator concat --n_epochs 10 --neighbor_sample_size 8 --dim 32 --n_iter 1 --batch_size 128 --l2_weight 1e-4 --lr 0.005 --layer_size [32] --adj_type norm --alg_type lightgcn --model_type KGCN_LightGCN --node_dropout [0.1] --mess_dropout [0.1] --node_dropout_flag 1 --alpha 0.5 --smoothing_steps 8 --pretrain 0 --att h_ur_t --runs 3 --gpu_id 0
```


```

## About implementation

We build our model based on the implementations of Personalized knowledge-aware recommendation with collaborative
and attentive graph convolutional networks (https://github.com/daiquanyu/COAT).

## About Datasets
The datasets available from the corresponding author


## Citation 
If you would like to use our code, please cite:
```

```
