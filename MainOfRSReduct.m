%% Main Program
%  run begine here
clc;
clear;
close all;

%% Let be an Information System (IS) = (U,A)
% Decision Table
Data = xlsread('RawData.xlsx','Sheet1');

% Universe
U = Data(:,1);
% Conditional Attributes
C = Data(:,2:end-1);
% Decision Attributes
D = Data(:,end);
% New Decision Attributes
save TableData.mat Data U C D

%% Number of conditional attributes
nvars = 61;% c_attributes is 62
% GA is used to running the model
F = @(r)TargetOptFcn(r,U,C,D);
% Objective function
% Optional; to find the best computerization result the iterations set
% until 200
options  = gaoptimset('display','diagnose','Generations ',200,...
    'PlotFcns',{@gaplotbestf, @gaplotdistance, @gaplotexpectation, @gaplotrange, @gaplotstopping});
disp('===================== start to computing... =======================');
[r_float, targetValue]= ga(F,nvars,[diag(ones(1,nvars));diag(-ones(1,nvars))],...
                   [ones(1,nvars) zeros(1,nvars)]',[],[],[],[],[],options);
% r_result is resulted by using GA
r_result = round(r_float);
disp('======================= end of computing ==========================');
disp(' ');
disp('====================== result of computing ========================');
disp(['minimize r = [ ' num2str(r_result) ' ]']);
numc = sum(r_result);
c_str = repmat('c',1,numc);
c_num_str = num2str(find(r_result==1)')';
space_str = repmat(' ',1,numc);
C_str = reshape([c_str;c_num_str;space_str],1,[]);
disp(['Reduct of C_attributes C_reduct = [ ', C_str, ' ]']);
disp(['targeted of C_attributes targetValue = ' num2str(targetValue)]);
disp('the result C_reduct = ');
% C_reduct is from droping certain value of attributes
C_reduct = C(:,r_result==1);
disp(C_reduct)
% The family R is independent if each x element a(i) is indispensable in R,
% otherwise R is dependent
gama = DependencyDegree(U,C_reduct,D);
disp(['The quality of classification is defined as gama =  ' num2str(gama)]);
% end of Program