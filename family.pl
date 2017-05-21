:- discontiguous((male/1, parent/2, female/1)).
parent(chaos, gaea). 
male(chaos). 
parent(gaea, cyclope). 
male(cyclope). 
parent(gaea, chronos). 
male(uranus). 
parent(gaea, coeus). 
male(chronos). 
parent(gaea, oceanus). 
male(coeus). 
parent(uranus, cyclope). 
male(oceanus). 
parent(uranus, chronos). 
male(hades). 
parent(uranus, coeus). 
male(poseidon). 
parent(uranus, oceanus). 
male(zeus). 
parent(chronos, hades). 
male(ares). 
parent(chronos, poseidon). 
male(apollo).
parent(chronos, zeus). 
male(iapetus). 
parent(rhea, hades). 
female(gaea). 
parent(rhea, poseidon). 
female(rhea). 
parent(rhea, zeus). 
female(leto). 
parent(coeus, leto). 
female(hera). 
parent(phoebe, leto). 
female(phoebe). 
parent(leto, apollo). 
female(tethys). 
parent(leto, artemis). 
female(artemis). 
parent(zeus, apollo). 
parent(zeus, artemis). 
parent(oceanus, iapetus). 
parent(tethys, iapetus). 
parent(hera, ares). 
parent(zeus, ares). 

father(X,Y) :- male(X),parent(X,Y).
mother(X,Y)	:- female(X),parent(X,Y).
son(X,Y)	:- male(X),parent(Y,X).
daughter(X,Y)	:- female(X),parent(Y,X).
sibling(X,Y)	:- parent(Ningen, X), parent(Ningen, Y).
uncle(X,Y)	:- male(X), parent(Ningen, Y), sibling(X,Ningen).
grandfather(X,Y) :- male(X),parent(X,Ningen),parent(Ningen,Y).
grandmother(X,Y) :- female(X), parent(X,Ningen), parent(Ningen,Y).
