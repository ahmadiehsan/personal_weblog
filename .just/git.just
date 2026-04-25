import "_share.just"
import "_working_dir.just"

init_hooks:
    uvx pre-commit install -t pre-commit -t pre-push -t commit-msg

run_hooks:
    uvx pre-commit run

run_hooks_for_all:
    uvx pre-commit run --all-files
