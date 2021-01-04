# rules_sfml

Bazel rules for integrating SFML into your project

## How to Use

```python
git_repository(
    name = "com_github_sengelha_rules_sfml",
    branch = "main",
    remote = "https://github.com/sengelha/rules_sfml",
)

load("@com_github_sengelha_rules_sfml//sfml:deps.bzl", "rules_sfml_deps")
rules_sfml_deps()
load("@com_github_sengelha_rules_sfml//sfml:sfml.bzl", "rules_sfml_setup")
rules_sfml_setup()
```