clear; close all; clc;
addpath('../DCFNet');

init_rect = [129,80,64,78];%[232,88,76,84];
img_file = dir('./David/img/*.jpg');
img_file = fullfile('./David/img/', {img_file.name});
subS.init_rect = init_rect;
subS.s_frames = img_file;

param = {};
param.net_name = 'DCFNet-dataset-3-net-21-loss-1-epoch-50';
param.interp_factor = 0.002;
param.scale_penalty = 0.9925;
param.scale_step = 1.03;
state.gpu = false;
% state.gpu = true;
% gpuDevice(1);
state.visual = true;

res = run_DCFNet(subS,0,0,param);