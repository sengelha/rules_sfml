load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_sfml_deps():
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
