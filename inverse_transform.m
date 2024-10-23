function inv_transform = inverse_transform(m, H_coefficients)
    H = mtxdya(m);
    % load H_matrix_2048.mat;
    % H = H_matrix;
    %H_coefficients = H_coefficients(1:2:end, :);
    inv_transform = (H_coefficients * H);
    inv_transform = reshape(inv_transform', 1, numel(H_coefficients));
end

