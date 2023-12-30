function targetValue = TargetOptFcn(r,U,C,D)
% TargetOptFcn Objective function using GA approach
% Input:  Name        Description         Type
%          r          reduction           array
%          U          Universe            array
%          C          Reduction att       array
%          D          Decision attributes array
% Output: Name        Description         Tpye
%         targetValue discernibility      double

% Author: reza_dano 
% Email:  dobagusmuhammadreza@gmail.com
% Time:   2021/28/04
%==========================================================================

    if(length(r)~= size(C,2))
        error('RS:error','wrong binary input r.');
    end
    r_bin =round(r);
    C_reduct = C(:,r_bin==1);
    % finding the set of all indispensable attributes
    target1 = DependencyDegree(U,C_reduct,D);
    % Given knowledge representation system
    target2 = (length(r_bin) - sum(r_bin))/length(r_bin);
    % cardinal number of the set, which is the number of elements contained 
    % in the set
    target3 = sum(abs(r.*(r-1)))/length(r);
    % weight of page for a particular cluster target1 +target2
    % r is floating-point type
    % the algorithm for finding the cluster that has the same interests    
    targetValue = -5*target1 - 2*target2 + target3;
end
