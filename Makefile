default:
	$(MAKE) build
	$(MAKE) repo

sync:
	cp ${PWD}/mmk.{db,files}.tar.gz ${HOME}/aur
	cp ${PWD}/mmk.{db,files} ${HOME}/aur
	cp ${PWD}/*.pkg.tar.zst ${HOME}/aur

repo:
	repo-add ${PWD}/mmk-meta.db.tar.gz ${PWD}/*.pkg.tar.zst

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

migrate:
	@paru -R ${PACKAGE} || true
	@aur sync -d mmk-aur --root ${HOME}/arch/aur -r ${PACKAGE}
	@sudo pacman -Sy --noconfirm --asdeps ${PACKAGE}

from-kbfs:
	@rsync -avh /run/user/1000/keybase/kbfs/private/mknapik/arch/ ~/arch
to-kbfs:
	@rsync -avh ~/arch/ /run/user/1000/keybase/kbfs/private/mknapik/arch

.PHONY: default repo build
