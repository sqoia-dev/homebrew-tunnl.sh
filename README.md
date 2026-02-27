# homebrew-tunnl

Homebrew tap for [tunnl.sh](https://www.sqoia.dev/tunnl.sh/) CLI — instant secure tunnels to localhost.

## Installation

```bash
brew install sqoia-dev/tunnl/tunnl
```

This adds the `sqoia-dev/tunnl` tap and installs the `tunnl` binary in one step.

## Updating

```bash
brew upgrade tunnl
```

## Usage

```bash
# Start a tunnel to port 3000
tunnl 3000

# Start a tunnel with a custom subdomain (Pro/Team/Enterprise)
tunnl 3000 --subdomain myapp

# Auto-update the CLI
tunnl update
```

Full documentation: [www.sqoia.dev/tunnl.sh/docs/](https://www.sqoia.dev/tunnl.sh/docs/)

## Supported Platforms

| Platform | Architecture |
|---|---|
| macOS | Apple Silicon (ARM64) |
| macOS | Intel (AMD64) |
| Linux | x86_64 (AMD64) |
| Linux | ARM64 |

## About

tunnl.sh is built by [Sqoia Labs](https://www.sqoia.dev). The formula in this tap is automatically updated on every CLI release via GitHub Actions.
