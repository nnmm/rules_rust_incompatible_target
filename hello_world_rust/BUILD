load("@rules_rust//rust:defs.bzl", "rust_binary")

rust_binary(
    name = "hello_world_rust",
    srcs = ["src/main.rs"],
    edition = "2021",
    target_compatible_with = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
)
