# =========================
# Init
# =====
ARGS := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))
$(eval $(ARGS):;@:)  # Change the target-level arguments into do-nothing targets

# =========================
# Help (Put it first so that "make" without argument is like "make help")
# =====
help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z0-9][a-zA-Z0-9._-]*:' Makefile | sort | awk -F: '{print "  "$$1}'

# =========================
# PreCommit
# =====
pre_commit.init:
	pip install pre-commit==3.5.0
	pre-commit install
	pre-commit install --hook-type pre-push
	pre-commit install --hook-type commit-msg
	oco hook set

pre_commit.run_for_all:
	pre-commit run --all-files

# =========================
# App (Main Application)
# =====
app.build:
	find docs -mindepth 1 ! -name "CNAME" -delete
	hugo --minify

app.server:
	hugo server
