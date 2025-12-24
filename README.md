# Homebrew Tap for DevBldr

This is the official Homebrew tap for [DevBldr](https://github.com/jefferyabbott/devbldr), a local-first AI coding assistant that runs entirely on your machine using Ollama LLMs.

## Support This Project

If you find DevBldr useful, consider buying the developer a coffee!

[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-support-yellow?style=for-the-badge&logo=buy-me-a-coffee)](https://buymeacoffee.com/jefferyabbott)

<img src="assets/buymeacoffee-qr.png" alt="Buy Me A Coffee QR Code" width="200">

## Requirements

- Apple Silicon Mac
- macOS 12.0 or later
- [Ollama](https://ollama.ai) installed

## Installation

```bash
# Add this tap
brew tap jefferyabbott/devbldr

# Install DevBldr
brew install devbldr
```

Or install directly in one command:

```bash
brew install jefferyabbott/devbldr/devbldr
```

## Usage

```bash
# Start DevBldr in your project directory
devbldr /path/to/project

# Or in current directory
devbldr
```

## Updating

```bash
brew update
brew upgrade devbldr
```

## Uninstalling

```bash
brew uninstall devbldr
brew untap jefferyabbott/devbldr
```

## License

MIT License

