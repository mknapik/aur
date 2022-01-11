default: repo

repo: build
	repo-add ${PWD}/mmk.db.tar.gz ${PWD}/*.pkg.tar.zst

build:
	makepkg -sf