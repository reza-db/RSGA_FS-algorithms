# RSGA_FS-algorithms
Rough set-based genetic algorithms are feature selection algorithms to solve a large number of attributes and find their correlations. The algorithm is used in the paper "Do. Bagus, M. R., & Hanaoka, S. (2022). The central tendency of the seaport-fulcrum supply chain risk in Indonesia using a rough set. The Asian Journal of Shipping and Logistics, 38(4), 222–233. https://doi.org/10.1016/j.ajsl.2022.08.003

In order to solve the feature selection problem according to their dependency. In this algorithms, there are several script that explained as folows:

1. M script  MainOfRSReduct.m
This is a main scripting solution for feature selewction/ attribute reduction, but also the implementation of the entire program of the entrance.
The objective function consists of three parts. The first part represents the classification ability. A reduction occurs when k = 1. The second part shows the reduction rate. For example, the fewer attributes in the attribute subset B indicate that B is a minimum reduction with a high reduction rate. The third part is the weight factor, which increases the efficiency of the algorithm. The three elements are dynamically adjusted during algorithm evolution.

The objective function in script is as follows:
% F = @(r)TargetOptFcn(r,U,C,D);
Follows by other script:
% function targetValue = TargetOptFcn(r,U,C,D)
% if(length(r)~= size(C,2))
%        error('RS:error','wrong binary input r.');
%    end
%    r_bin =round(r);
%    C_reduct = C(:,r_bin==1);
    
%    target1 = DependencyDegree(U,C_reduct,D);
%    target2 = (length(r_bin) - sum(r_bin))/length(r_bin);
%    target3 = sum(abs(r.*(r-1)))/length(r);
%    targetValue = -5*target1 - 2*target2 + target3;
% end

Since the paper where r is 0 or 1 requirements, genetic algorithms is used to solve programming problems that can be 0-1 by modifying the purpose of the objective function.

===========================================================================
2.function M  TargetOptFcn.m ------------
file:genetic algorithmthe objective function
to calculatePositiveRegion.m --------- positive field
approximation CALCULATION
IsSubLowerApproximation.m ------.m determine whether the set a is a subset of the set B 
EquivalentClassSet.m is based on the set of all equivalence classes of R classification, that is R EleEquivalentSet.m -------
U calculation contains a classification of an element
DependencyDegree.m is calculated based attribute significance degree.

===========================================================================
3. the main function used MATLAB
genetic algorithm toolbox or ga is Optimizer box genetic algorithmfunction to find a unique matrix elements will not be repeated or not repeated ranks, etc.
max is returns a matrix of rows or columns of maximum
a matrix ofrows returned max or column minimum
str2num is string into numerical
values turn num2str is string
dec2bin is decimal turn binary string
ismember is judgment whether elements in a matrix
round is rounding function
length is returns a matrix or vector length
error is give an error
warning is warning

===========================================================================
4. part of the English word translation, to help understand the
reduct is reduction
unique = unique
target = goal
Approximation = Approximation
Equivalent = equivalent
dependency = feature /attribuite dependence
positive field = positive region

