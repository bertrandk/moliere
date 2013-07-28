Molière
=======

__Warning: This is a work-in-progress.__

Molière is a __french__ object-oriented programming language with some functional characteristics.

Features
--------

*	Expressive syntax _heavily_ inspired by Ruby
*	Immutable and persistent data structures
* First-class functions
*	Designed for concurrency
*	Mixin support
*	Probably more (or less)


Examples
--------

### Hello World

    imprime "Bonjour tout le monde!"

### Mutations

```
    classe Personne
  
	    déf initialise(nom="John Doe", âge=0)
		    @nom = nom
		    @âge = âge
	    fin

	    déf âge
		    retourne @âge
	    fin

	    déf change_l'âge_a(nouveau_âge)
		    @âge = nouveau_âge
	    fin

    fin
    
    tom = Personne.neuf "Tom Jones", 30   # return a new 'Personne' object and binds it to 'tom'
    tom_sr = tom.change_l'âge_a(70)       # also returns a new 'Personne' object, bound to 'tom_sr'

```
#### Notes
- Any variable assignment will cause a method to immediately return a new object;
	they are essential implicit return statements.
    (i.e. '@âge = nouveau_âge' is equivalent to 'return Personne.new ..., nouveau_âge)
-	New object creation is efficient due to structural sharing of data structure...it is not a complete clone.
  (i.e. tom & tom_sr above share the same exact '@nom' object, it is not copied.)

Why a french programming language?
----------------------------------

Oh...because I'm Canadian and I'm obligated by law to code in both English and French.
