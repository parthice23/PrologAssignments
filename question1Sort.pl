%Parth Patel
%CSE 240

%In this question, you will choose the last (right-most) element of the list as the pivot. 
%In order to do 
%so, you can implement a get_last(L, E) and remove_last(L, Ls), as described below.
%so here we have it this time with E,E
get_last([E],E).
%Now we can move on to (T,E)
%You got to now repeat this process so this works.
get_last([_|L],E) :- get_last(L,E).

%1.1
%Write a Prolog rule: get_last(L, E), which return the last element of list L to E.
%here is our test case
%we can use E for this one
q1 :- get_last([1,2,3,4,5],E),write('E='),write(E).


%1.2
%now we can the remove last there and put one in the brackets
%once you are able to put then you can add extra in iit
remove_last([_],[]).
%Write a Prolog rule: remove_last(L, Ls) 
%which return the sub-list without the last element to Ls. 
%you have to use this now so you can remove that last element 
remove_last([R|L],[R|Ls]) :- remove_last(L,Ls).
%here is our test case and this time we can use X for our variable
q2 :- remove_last([1,2,3,4,5,6],X),write('X='),write(X).

%so here is our sort for our quicksort rule
qsort([],[]) :- !.
%1.3
%Rewrite quicksort rule qsort(L, Sorted), which will return the sorted list to Sorted.
qsort(L,Sorted):-
        %You must use the get_last and remove_last in your qsort rule
        get_last(L,P),
        %You must use the get_last and remove_last in your qsort rule
        remove_last(L,Ta),
        %so that the qsort rule takes the last (right-most) element of the list L as the pivot.
        split(P, Ta, L1, L2),
        %now we use this for the first sorted
        qsort(L1, S1),
        %now use this for the second sorted  
        qsort(L2,S2),
        %now we should be able to append both of these sortts
        %this should be sort1 now
        %this should be sort2 now
        append(S1,[P|S2], Sorted).
%there are three splits we need to use
split(_,[],[],[]).
%use the splits if l is less than or equal to p
split(P,[L|T],[L|Le],Gt):- L=<P, split(P,T,Le,Gt).
%use the splits if l is greater than p
split(P,[L|T],Le,[L|Gt]):- L > P, split(P,T,Le,Gt).
%here is our test case and we can use sorted for the variable 
q3 :- qsort([8,3,4,12,25,4,6,1,9,22,6],Sorted),write('Sorted='),write(Sorted).