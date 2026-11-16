# AGENTS.md

GitHub profile repository. No build, test, or lint tooling.

- CI generates GitHub Snake animation to `dist/github-snake.svg`
- Automated via `.github/workflows/ci.yml` (daily schedule + push to main)
- No application code, dependencies, or traditional dev workflow
- Action dependencies are pinned in `.github/workflows/actions.lock` (see `.github/ACTIONS_LOCK.md`); run `gh actions-lock --no-narrow` after adding/editing a workflow
- Repository topics are applied by `.github/workflows/repository-topics.yml` (manual `workflow_dispatch`); it needs the `TOPICS_TOKEN` secret because `GITHUB_TOKEN` cannot be granted `administration`
