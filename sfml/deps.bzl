load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_sfml_deps():
    if "stb" not in native.existing_rules():
        http_archive(
            name = "stb",
            build_file = "@com_github_sengelha_rules_sfml//sfml/private:stb.BUILD",
            sha256 = "9dd7b5ff7538ecc8c65b9f392a0ed48f91c80a19b6f3f5a24cf1e687893fbe6b",
            strip_prefix = "stb-b42009b3b9d4ca35bc703f5310eedc74f584be58",
            # Latest as of 2021-02-21
            urls = [
                "https://github.com/nothings/stb/archive/b42009b3b9d4ca35bc703f5310eedc74f584be58.zip",
            ],
        )

    if "freetype2" not in native.existing_rules():
        http_archive(
            name = "freetype2",
            build_file = "@com_github_sengelha_rules_sfml//sfml/private:freetype2.BUILD",
            sha256 = "5eab795ebb23ac77001cfb68b7d4d50b5d6c7469247b0b01b2c953269f658dac",
            strip_prefix = "freetype-2.10.4",
            urls = [
                "https://download.savannah.gnu.org/releases/freetype/freetype-2.10.4.tar.gz"
            ]
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