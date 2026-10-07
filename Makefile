# robotics-learning: every module is a git submodule under modules/.
.PHONY: init pull status build test
init:   ; git submodule update --init --recursive
pull:   ; git submodule update --remote --merge
status: ; git submodule foreach --quiet 'echo "$$name  $$(git rev-parse --short HEAD)  $$(git status --porcelain | wc -l) changed"'
build:  ; git submodule foreach 'pip install -e . || true'
test:   ; git submodule foreach 'make test || true'
