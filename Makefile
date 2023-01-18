export BUILDDIR := ${XDG_RUNTIME_DIR}/arch-pkgbuild/

default:
	$(MAKE) build
	$(MAKE) repo
	$(MAKE) sync

sync:
	mkdir -p ${HOME}/arch/meta
	cp ${PWD}/mmk-meta.{db,files}.tar.gz ${HOME}/arch/meta/
	cp ${PWD}/mmk-meta.{db,files} ${HOME}/arch/meta/
	cp ${PWD}/*.pkg.tar.zst ${HOME}/arch/meta/

repo:
	repo-add ${PWD}/mmk-meta.db.tar.gz ${PWD}/*.pkg.tar.zst

build: builddir
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

builddir:
	@mkdir -p ${BUILDDIR}

orphans:
	@pacman -Qtdq

clean:
	@git clean -fdx

from-kbfs:
	@rsync -avh /run/user/1000/keybase/kbfs/private/mknapik/arch/ ${HOME}/arch
to-kbfs:
	@rsync -avh --delete ${HOME}/arch/ /run/user/1000/keybase/kbfs/private/mknapik/arch

.PHONY: default repo build
	