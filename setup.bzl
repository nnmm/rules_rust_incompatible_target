load(
    "@rules_rust//rust:repositories.bzl",
    "rules_rust_dependencies",
    "rust_register_toolchains",
    "rust_repositories",
)

VERSION = "1.61.0"

def setup_rules_rust_repositories():
    rules_rust_dependencies()
    rust_repositories()
    rust_register_toolchains(versions = [VERSION], edition = "2021")
