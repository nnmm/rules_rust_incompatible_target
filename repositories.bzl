load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# To find additional information on this release or newer ones visit:
# https://github.com/bazelbuild/rules_rust/releases

VERSION = "1.3.0"

def load_bazel_skylib_repositories():
    maybe(
        name = "bazel_skylib",
        repo_rule = http_archive,
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/{version}/bazel-skylib-{version}.tar.gz".format(version = VERSION),
            "https://github.com/bazelbuild/bazel-skylib/releases/download/{version}/bazel-skylib-{version}.tar.gz".format(version = VERSION),
        ],
        sha256 = "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
    )

RULES_RUST_VERSION = "0.18.0"

def load_rules_rust_repositories():
    maybe(
        name = "rules_rust",
        repo_rule = http_archive,
        sha256 = "2466e5b2514772e84f9009010797b9cd4b51c1e6445bbd5b5e24848d90e6fb2e",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_rust/releases/download/{version}/rules_rust-v{version}.tar.gz".format(version = RULES_RUST_VERSION),
            "https://github.com/bazelbuild/rules_rust/releases/download/{version}/rules_rust-v{version}.tar.gz".format(version = RULES_RUST_VERSION),
        ],
    )
