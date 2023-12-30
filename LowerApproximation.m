function lowAppSet = LowerApproximation(U,R,X)
% lower approximations is the elements that doubtlessly belong to the set, 
% which represents with R_(X)
% Input:  Name       Description           Type
%          U         Universe              array
%          R         discernible attribute array
%          X         set of objects        array
% Output: Name       Description           Tpye
%         lowAppSet  certain in set        array

% Author: reza_dano 
% Email:  dobagusmuhammadreza@gmail.com
% Time:   2021/28/04
% =========================================================================
lowAppSet = [];
if(~IndSub(X,U))
    warning('RS:warning','set X is not sub set of U.');
return;
end
U_R_cell = EquivalentClassSet(U,R);
for i=1:length(U_R_cell)
    if(IndSub(U_R_cell{i},X))
      lowAppSet  = union(lowAppSet,U_R_cell{i}); 
    end
end
        
end
