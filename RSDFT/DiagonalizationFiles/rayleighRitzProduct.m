function G = rayleighRitzProduct(Vin,W)
%% G = rayleighRitzProduct(Vin,W)
%% computes the same Rayleigh-Ritz projection as the old MATLAB loops.

G = Vin' * W;
G = triu(G) + triu(G,1)';
