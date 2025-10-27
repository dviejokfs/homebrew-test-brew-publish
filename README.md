# datetime-cli

A simple CLI tool written in Rust that prints the current date and time.

## Installation

### Via Homebrew (macOS)

Once you've set up your public tap:

```bash
brew tap yourusername/datetime-cli
brew install datetime-cli
```

### From Source

```bash
git clone https://github.com/yourusername/datetime-cli.git
cd datetime-cli
cargo build --release
./target/release/datetime-cli
```

## Usage

Simply run the command:

```bash
datetime-cli
```

Output example:
```
Current date and time: 2025-10-27 18:55:35 +01:00
Unix timestamp: 1761587735
```

## Development

### Prerequisites

- Rust 1.70+ (install via [rustup](https://rustup.rs/))
- Git

### Building

```bash
cargo build
```

### Running Tests

```bash
cargo test
```

### Running Locally

```bash
cargo run
```

## Homebrew Tap Setup

This project includes automated Homebrew tap management via GitHub Actions.

### Setup Instructions

1. **Create a GitHub repository** for your project (this repo)
2. **Update the repository information** in:
   - [Cargo.toml](Cargo.toml) - Update `repository` field
   - [Formula/datetime-cli.rb](Formula/datetime-cli.rb) - Update URLs
   - [.github/workflows/release.yml](.github/workflows/release.yml) - Already uses `github.repository`

3. **Initialize Git and Push**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/datetime-cli.git
   git push -u origin main
   ```

4. **Create a Release**:
   - Tag your commit: `git tag v0.1.0`
   - Push the tag: `git push origin v0.1.0`
   - GitHub Actions will automatically:
     - Build binaries for macOS (Intel & ARM) and Linux
     - Create a GitHub Release
     - Update the Homebrew formula with correct SHA256 hashes
     - Commit the formula back to the repository

5. **Install via Homebrew**:
   ```bash
   brew tap yourusername/datetime-cli https://github.com/yourusername/datetime-cli
   brew install datetime-cli
   ```

### How it Works

The GitHub Actions workflow ([release.yml](.github/workflows/release.yml)) does the following:

1. **Build Job**:
   - Triggers on version tags (e.g., `v0.1.0`)
   - Builds for multiple targets (macOS Intel, macOS ARM, Linux)
   - Creates `.tar.gz` archives and SHA256 checksums
   - Uploads artifacts to GitHub Releases

2. **Update Homebrew Tap Job**:
   - Downloads the release artifacts
   - Calculates SHA256 hashes
   - Updates the Homebrew formula with correct URLs and hashes
   - Commits the updated formula back to the repository

### Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── release.yml          # GitHub Actions workflow
├── Formula/
│   └── datetime-cli.rb         # Homebrew formula
├── src/
│   └── main.rs                 # Source code
├── Cargo.toml                  # Rust package manifest
├── LICENSE                     # MIT License
└── README.md                   # This file
```

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
