parent(elena, platon).
parent(phillip, platon).
parent(antuan, phillip).
parent(josephine, phillip).
parent(etienne, josephine).
parent(elizaveta, elena).
parent(kirill, elena).
parent(elizaveta, roman).
parent(kirill, roman).
parent(elizaveta, aristarch).
parent(kirill, aristarch).
parent(fedor, elizaveta).
parent(agrippina, kirill).
parent(ivan, kirill).
parent(nill, agrippina).
parent(alexey, ivan).
parent(lev, fedor).
parent(lev, feodosia).
parent(nikita, vladimir).
parent(feodosia, vladimir).

spouse(elena, phillip).
spouse(josephine, antuan).
spouse(elizaveta, kirill).
spouse(agrippina, ivan).
spouse(feodosia, nikita).
spouse(X,Y):- spouse(Y, X).

male(platon).
male(phillip).
male(antuan).
male(etienne).
male(kirill).
male(roman).
male(aristarch).
male(fedor).
male(ivan).
male(nill).
male(alexey).
male(lev).
male(nikita).
male(vladimir).

female(elena).
female(josephine).
female(elizaveta).
female(agrippina).
female(feodosia).

surname(roskof, platon).
surname(roskof, elena).
surname(roskof, phillip).
surname(roskof, antuan).
surname(roskof, josephine).
surname(morlaix, etienne).
surname(saburov, kirill).
surname(saburov, elizaveta).
surname(saburov, roman).
surname(saburov, aristarch).
surname(arsentiev, fedor).
surname(arsentiev, lev).
surname(saburov, agrippina).
surname(saburov, ivan).
surname(saburov, alexey).
surname(ivleev, nill).
surname(finistov, nikita).
surname(finistov, feodosia).
surname(finistov, vladimir).

mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
husband(X,Y):- spouse(X,Y), male(X).
wife(X,Y):- spouse(X,Y), female(Y).
sibling(X,Y):- parent(Z,X), parent(Z,Y), X\==Y.
brother(X,Y):- sibling(X,Y), male(X).
sister(X,Y):- sibling(X,Y), female(X).
uncle(X,Y):- parent(Z,Y), brother(X,Z).
aunt(X,Y):- parent(Z,Y), sister(X,Z).
cousin(X,Y):- parent(Z,X), parent(R,Y), sibling(Z,R).
ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z), ancestor(Z,Y).
child(X,Y):- parent(Y,X).
son(X,Y):- child(X,Y), male(X).
daughter(X,Y):- child(X,Y), female(X).
nephew(X,Y):- child(X,Z), sibling(Z,Y).
niece(X,Y):- child(X,Z), sibling(Z,Y).
descendant(X,Y):- child(X,Y).
descendant(X,Y):- child(X,Z), descendant(Z,Y).
maiden_name(Name, Lady):- father(Y, Lady), surname(Name, Y), female(Lady).
