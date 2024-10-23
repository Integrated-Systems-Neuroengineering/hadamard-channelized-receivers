function r = cyclic_conv2(X, Y)
    if size(X, 2) == 1
        r = X .* Y;
    else
        c = cyclic_conv2(X(:, 1:size(X, 2)/2), Y(:, 1:size(X, 2)/2));
        d = cyclic_conv2(X(:, 1+size(X, 2)/2:end), Y(:, 1+size(X, 2)/2:end));
        OX = (X(:, 1:size(X, 2)/2) - X(:, 1+size(X, 2)/2:end))/2;
        EY = (Y(:, 1:size(X, 2)/2) + Y(:, 1+size(X, 2)/2:end))/2;
        f = cyclic_conv2(OX, EY);
        r = calc_conv(c, d, f);
    end
end

function r = calc_conv(c, d, f)
    r = zeros(size(c, 1), size(c, 2) * 2);
    r(1:2:end) = (c + d)/2;
    r(2:2:end) = (c - d)/2 + circshift(f, -1) - f;
end
