default:
	$(MAKE) build
	$(MAKE) repo

repo:
	repo-add ${PWD}/mmk.db.tar.gz ${PWD}/*.pkg.tar.zst

build:
	makepkg -sf

list-deps:
	@cat PKGBUILD | grep "        " | sd "\#.+" "" | sd "\s+" "\n" | sort | uniq 

mark-deps:
	@make list-deps

list-explicit-tree:
	@pacman -Qeq | xargs -I{} pactree -rco1 {} | cat

list-orphans:
	@pacman -Qtdq

.PHONY: default repo build
