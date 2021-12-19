%Parth Patel
%CSE 240

%first step is defining the funcion foo(X,Y,F)
foo(X, Y, F):-
    %second step
    %We need to make f equal to Y 
    %only if x is less than zero
    X=<0 -> F is Y, !.


foo(X, Y, F):-
    %third step
    %We need to make f equal to Y 
    %only if x is less than zero
    Y=<0 -> F is X, !.



foo(X, Y, F):-
    %fourth step
    % we need to make f equal to y plus foo x-2,y-3
    % this can only happen if x is less than y
    X<Y -> Y1 is Y-3,X1 is X-2, (foo(X1, Y1, F1)), F is Y+F1;
    % now we have to make else statement
    % so here now we have to make it f equal to x plus foo x-1,y-2 now
    X1 is X-1, Y1 is Y-2, (foo(X1, Y1, F1)), F is X+F1.