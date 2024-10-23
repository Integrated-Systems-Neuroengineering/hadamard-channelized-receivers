function y = recombine(X, to_order)
    if size(X, 2) == to_order
        y = X;
    else
        a = X(1:2:end, :);
        b = X(2:2:end, :);
        R = zeros(size(X, 1)/2, size(X, 2) * 2);
        R(:, 1:2:size(R, 2)) = a + b;
        R(:, 2:2:size(R, 2)) = a - b;
        y = recombine(R, to_order);
    end
end