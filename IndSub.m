function bool = IndSub(A,B)
% IndSub is an indiscernibility relation
% Input:  Name     Description               Type
%          A       member set       of A     array
%          B       member subset    of A     array
% Output: Name     Description               Type
%         bool     value true/false          logical

% Author: reza_dano 
% Email:  dobagusmuhammadreza@gmail.com
% Time:   2021/28/04
% =========================================================================
if(all(ismember(A,B)))
    bool = true;
else
    bool = false;
end