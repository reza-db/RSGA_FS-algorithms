function equSetCell = EquivalentClassSet(U,R)
% EquivalentClassSet is information system or approximation space U/R
% Input:  Name        Description                  Type
%          U          Universe                     array
%          R          set of attributes            array
% Output: Name        Description                  Tpye
%         equSetCell  domain of attributes[x]_R    cell array

% Author: reza_dano 
% Email:  dobagusmuhammadreza@gmail.com
% Time:   2021/28/04
% =========================================================================

% U is the finite set of objects
% R is the set of attributes
if(size(R,1)~=size(U,1))
    error('RoughSet:error','wrong input argument size => size(R,1)~=size(U,1)');
end
N = max(R(:))+1;
Rcode = R*N.^(size(R,2)-1:-1:0)';
uniqRcode = unique(Rcode);
numClass =  size(uniqRcode,1);
% domain of attributes x in R cell array, where x have a value
equSetCell = cell(1,numClass);
for i = 1:numClass
    ind = (Rcode==uniqRcode(i));
    equSetCell{i} = U(ind);
end   
end
