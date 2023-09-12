function [X , Y , Sx , Sy, S] = gen_cca_data(N, d, Dx, Dy)
% inputs
% N: number of samples
% d: the dimension of the latent space representation
% Dx: the dimension of the view X
% Dy: the dimension of the view Y

% outputs
% X: N by Dx; Dx >= d
% Y: N by Dy; Dy >= d
% Sx: N by min(Dx, Dy); latent represention from X
% Sy: N by min(Dx, Dy); latent represention from Y

% generate shared latent data S using Multivariate Normal Random Numbers
% S: mean is a zero vector; variance is identity
% S: N by d
% d = 5; % number of features in S
% N = 1000; % number of data samples

mu_s = zeros(1 , d);
Cov_s = eye(d);
S = mvnrnd(mu_s , Cov_s , N);

% generate two views X and Y
% Dx = 30; % dimension of view X
% Dy = 15; % dimension of view Y
Px = randn(d , Dx); % projection matrix to generate X from S
Py = randn(d , Dy); % projection matrix to generate Y from S
del_noise = 0.01;
X = S * Px + del_noise*randn(N, Dx);
Y = S * Py + del_noise*randn(N, Dy);

% test CCA correlation between X and Y

 [Ux,Uy,r,Sx,Sy] = canoncorr(X,Y);% returns the latent representation with dim=min(Dx, Dy)
% Ux: projection matrix estimation; Dx by min(Dx, Dy) or d
% Uy: projection matrix estimation; Dy by min(Dx, Dy) or d
% Sx: latent represention from; N by min(Dx, Dy) or d
% Sy: latent represention from; N by min(Dx, Dy) or d


% figure;
% plot(Sx(:,1),Sy(:,1),'.')
% xlabel('Sx1')
% ylabel('Sy1')
