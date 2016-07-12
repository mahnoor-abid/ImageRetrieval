% function Iq = uniformQuantization(I,Nq) 
%
%?Quantizes a given double image I (double in rage [0,1]) with given number
% of intervals for each color channel e.g. [16 4 4] 
%
%     INPUT : I has to be double in range [0,1]
%             Nq has to vector [16 4 4], 16 x 4 x 4
%
%     OUTPUT: Iq quantized image with 1 ... prod(Nq) intervals
%
% @2010 Martin Haller and Shiwang Singh
function Iq = uniformQuantization(I,Nq)
    for i = 1:3
         I(:,:,i) = fix(I(:,:,i)*0.9961.*Nq(i));   % 0.9961 = 255/256
    end
    % quantised image
    Iq = I(:,:,1)*Nq(2)*Nq(3)+ I(:,:,2)*Nq(3)  + I(:,:,3) + 1 ;