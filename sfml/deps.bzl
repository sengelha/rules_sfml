load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_sfml_deps():
    if "rules_foreign_cc" not in native.existing_rules():
        http_archive(
            name = "rules_foreign_cc",
            sha256 = "3c6445404e9e5d17fa0ecdef61be00dd93b20222c11f45e146a98c0a3f67defa",
            strip_prefix = "rules_foreign_cc-d54c78ab86b40770ee19f0949db9d74a831ab9f0",
            url = "https://github.com/bazelbuild/rules_foreign_cc/archive/d54c78ab86b40770ee19f0949db9d74a831ab9f0.zip",
        )

    if "sfml" not in native.existing_rules():
        http_archive(
            name = "sfml",
            build_file = "@com_github_sengelha_rules_sfml//sfml/private:sfml.BUILD",
            sha256 = "bf1e0643acb92369b24572b703473af60bac82caf5af61e77c063b779471bb7f",
            strip_prefix = "SFML-2.5.1",
            urls = [
                "https://www.sfml-dev.org/files/SFML-2.5.1-sources.zip",
            ],
        )
