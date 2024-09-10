# =========================
# Share
# =====
ARGS := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))
$(eval $(ARGS):;@:)  # Change the target-level arguments into do-nothing targets

# =========================
# PreCommit
# =====
pre_commit.init:
	oco hook set

# =========================
# App (Main Application)
# =====
app.build:
	hugo $(ARGS)

# =========================
# Share
# =====
help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z0-9][a-zA-Z0-9._-]*:' Makefile | sort | awk -F: '{print "  "$$1}'

