
# Module `repo`

Provider Requirements:
* **github:** (any version)

## Input Variables
* `repo_description` (required): Description of the GitHub repository
* `repo_name` (required): Name of the GitHub repository
* `repo_private` (default `false`): Whether the GitHub repository should be private or public

## Managed Resources
* `github_repository.repo` from `github`

