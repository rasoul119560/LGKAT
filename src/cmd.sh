

python main.py --dataset:movie --aggregator:concat --n_epochs:10 --neighbor_sample_size:4 --dim:32 --n_iter:2 --batch_size:65536 --l2_weight:5e-06 --ls_weight:0 --lr:0.02 --ratio:1 --layer_size:[32] --adj_type:plain --alg_type:gcn --node_dropout_flag:1 --node_dropout:[0.1] --mess_dropout:[0.1] --model_type:KGCN_LightGCN --att:h_ur_t --agg_type:weighted_avg --alpha:0.0 --smoothing_steps:1 --runs:3 --logging:save --pretrain:0 

python main.py --dataset:book --aggregator:concat --n_epochs:20 --neighbor_sample_size:8 --dim:64 --n_iter:1 --batch_size:256 --l2_weight:2e-05 --ls_weight:0 --lr:5e-05 --ratio:1 --layer_size:[64] --adj_type:norm --alg_type:gcn --node_dropout_flag:1 --node_dropout:[0.1] --mess_dropout:[0.1] --model_type:KGCN_LightGCN --att:h_ur_t --agg_type:weighted_avg --alpha:0.0 --smoothing_steps:3 --runs:3 --logging:save --pretrain:0 

python main.py --dataset:music --aggregator:concat --n_epochs:10 --neighbor_sample_size:8 --dim:32 --n_iter:1 --batch_size:128 --l2_weight:0.0001 --ls_weight:0 --lr:0.005 --ratio:1 --layer_size:[32] --adj_type:norm --alg_type:gcn --node_dropout_flag:1 --node_dropout:[0.1] --mess_dropout:[0.1] --model_type:KGCN_LightGCN --att:h_ur_t --agg_type:weighted_avg --alpha:0.5 --smoothing_steps:8 --runs:3 --logging:save --pretrain:0 
