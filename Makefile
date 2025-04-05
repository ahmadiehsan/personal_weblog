# =========================
# Init
# =====
.DEFAULT_GOAL := help

# =========================
# PreCommit
# =====
pre_commit.init:
	pip install pre-commit==4.2.0
	pre-commit install
	pre-commit install --hook-type pre-push
	pre-commit install --hook-type commit-msg
	oco hook set

pre_commit.run_for_all:
	pre-commit run --all-files

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
	@echo "Available targets:"
	@grep -E '^[a-zA-Z0-9][a-zA-Z0-9._-]*:' Makefile | sort | awk -F: '{print "  "$$1}'
