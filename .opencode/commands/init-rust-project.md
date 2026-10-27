---
description: Initialize a rust project
agent: build
---

# Init rust project

## Purpose

Initialize a rust project

## Usage

```text
/init-rust-project <project-name>
```

## Variables

PROJECT_NAME: $ARGUMENTS (required - the name of the project)

## Execute

### Confirmation

Before executing the phases below, ask the user for confirmation that the project should be initizalized

### Phase 1: Initialize your project

1. Remove template git previous history
   - Check if the .git directory exists in project root
   - If .git exists:
     - Execute `rm -rf .git` to remove it
     - Execute `git init` to start a new init

2. Create initial Cargo.toml
   - Check if the Cargo.toml file exists in project root
   - If Cargo.toml does not exist:
     - Execute `cargo init --name <project-name>`

### Phase 2: Install development dependencies

1. Install rustfmt and clippy
   - Execute `rustup component add rustfmt clippy`

2. Install cargo-watch for development
   - Execute `cargo install cargo-watch`

3. Install additional tools
   - Execute `cargo install cargo-tarpaulin` for code coverage
   - Execute `cargo install cargo-audit` for Security audits
   - Execute `cargo install cargo-outdated` for Dependency updates

### Phase 3: Update the README.md

1. Add a project specific section that tell the use what the project is about
