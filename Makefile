default:
	make build
	make repo

repo:
	repo-add ${PWD}/mmk.db.tar.gz ${PWD}/*.pkg.tar.zst

build:
	makepkg -sf

.PHONY: default repo build
