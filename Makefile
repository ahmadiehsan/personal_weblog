# =========================
# Init
# =====
.DEFAULT_GOAL := help
.SILENT:

# =========================
# Git
# =====
git.init_hooks:
	uvx pre-commit install
	uvx pre-commit install --hook-type pre-push
	uvx pre-commit install --hook-type commit-msg
	oco hook set

git.run_hooks_for_all:
	uvx pre-commit run --all-files

# =========================
# Manage
# =====
manage.build:
	hugo --gc --minify

manage.server:
	hugo server

# =========================
# Help
# =====
help:
	echo "available targets:"
	grep -E '^[a-zA-Z0-9][a-zA-Z0-9._-]*:' Makefile | sort | awk -F: '{print "  "$$1}'
