
# Module `gitlab_repo`

Provider Requirements:
* **gitlab:** (any version)

## Input Variables
* `enable_container_registry` (default `true`): Whether to enable the container registry for the GitLab repository
* `enable_issues` (default `true`): Whether to enable issues for the GitLab repository
* `enable_merge_requests` (default `true`): Whether to enable merge requests for the GitLab repository
* `enable_pages` (default `false`): Whether to enable GitLab Pages for the GitLab repository
* `initialize_with_readme` (default `true`): Whether to initialize the GitLab repository with a README file
* `repo_description` (required): Description of the GitLab repository to create
* `repo_name` (required): Name of the GitLab repository to create
* `repo_visibility` (default `"private"`): Visibility level of the GitLab repository to create

## Managed Resources
* `gitlab_project.repo` from `gitlab`

