b=base/	
p=uint_byte
newProj:
	mkdir $b$p
	cd $b$p;nimble init $p

Nim: # at first
	bash init/nim_nighty.sh
	bash init/make.profile.sh
	#bash init/emacs25_space.sh
	mkdir -p $b
run:
	cd $b$p;nimble build
	###### run $b$p #####
	$b$p/$p
em: #if you use spacemacs on ubuntu
	emacs25 $b$p/src/$p.nim

ex=./Nim/examples
cpProj: #it depends on ${ex} folder.
	mkdir $b$o
	cd $b$p;nimble init $p
	cp ${ex}/$p.nim $b$p/$p.nim
