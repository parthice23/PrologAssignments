%Parth Patel
%CSE 240


%2.1
%so here we have to define our rule
pizza(P,M,B,O,C):- 
%now since the maximum has to be 5
%then we have 5*9=45 because there is only 45
member(P,[0,1,2,3,4,5,6,7,8,9]), 
%now since the maximum has to be 10
%then we have 10*4=40 which is less than 45 but max it could be
member(M,[0,1,2,3,4]), 
%now since the maximum has to be 7
%then we have 7*6=42 which is less than 42 but max it could be
member(B,[0,1,2,3,4,5,6]), 
%now since the maximum has to be 15
%then we have 15*3=45 which is equal to 45 
member(O,[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]),
%now since the maximum has to be 8
%then we have 5*8=40 which is less than 40 but max it could be
member(C,[0,1,2,3,4,5]), 
%now here is total weight 
%this has to do with the summation
TotalWeight is P*5 + M*10 + B*7 + O*3 + C*8,
%this is to make sure the weight equals to correct ones
TotalWeight = 45,!. 

%2.2
%Write a rule called q2 :- condition, to ask the following question 
q2:-
    pizza(1, 2, 2, 2, 2). %it should return nothing "no"
%q3 rule
q3:-
    pizza(1, M, 1, O, C),
    %write for M,O,C
    write('M='),write(M),write(' O='),write(O),write(' C='),write(C),write('\n'). % it should return "C=3, M=0, O=3"
%q4 rule
q4:-
    pizza(P, M, B, O, 1),
    %write for P,M,B,O
    write('P='),write(P),write(' M='),write(M),write(' B='),write(B),
    %continue writing variables
    write(' O='),write(O),write('\n'). %it should return "B=1, M=0, O=10, P=0"