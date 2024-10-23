function D = mtxdya(N)
    D = paley_xx_natural(hadamard(N));
end

% function D = mtxdya(N)
%     q = log2(N);
%     % Generating dyadic(Paley) ordered HADAMARD matrix, 
%     % N must be a power of 2.
%     for u = 1:N
%         binu = dec2bin(u-1,q);
%         for v = 1:N
%             binv = dec2bin(v-1,q);
%             temp = 0;
%             for i = 1:q
%                 temp= temp + bin2dec(binu(i))*bin2dec(binv(q+1-i));
%             end
%             D(u,v)=(-1)^temp;
%         end
%     end
% end
