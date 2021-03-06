function [k] = rbfkernel(x1,x2)

sigma = 0.4;

n1sq = sum(x1.^2,2);

n2sq = sum(x2.^2,2);

k = bsxfun(@minus, n1sq, (2*x1)*x2.');
k = bsxfun(@plus, n2sq.', k);
k = exp(-k/(2*sigma^2));

end

