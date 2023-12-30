function gama = DependencyDegree(U,C,D)
% DependencyDegree Given knowledge representation system
% Input:  Name    Description         Type
%          U      Universe            array
%          C      Core attributes     array
%          D      Decision attributes array
% Output: Name    Description         Tpye
%         gama    Dependency degree   double

% Author: reza_dano 
% Email:  dobagusmuhammadreza@gmail.com
% Time:   2021/28/04
% =========================================================================

if(isempty(C))
    gama = 0;
    return;
end
posCD = PositiveRegion(U,C,D);
gama = length(posCD)/length(U);
end