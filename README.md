# Homebrew Tap

## Caravay Audio

[Caravay Audio](https://github.com/tjvjk/caravay-audio) captures macOS system
audio and streams raw Float32 little-endian PCM to stdout (mono, 16000 Hz).

Requires macOS 13 or later on Apple Silicon. Installs a prebuilt binary from
GitHub Releases; no Swift toolchain is needed. Intel binaries are not available.

```sh
brew install tjvjk/tap/caravay-audio
caravay-audio --version
caravay-audio > recording.f32le
```

On first capture, allow Screen & System Audio Recording in System Settings >
Privacy & Security for the executable or its launching terminal. Stop with Ctrl-C.
The microphone is not captured. Release archives are unsigned and not notarized.

## Update

```sh
brew update
brew upgrade caravay-audio
```

## Uninstall

```sh
brew uninstall caravay-audio
```

## Maintenance

Publish the versioned archive and its SHA-256 checksum in the upstream GitHub
Release, then update `url`, `version` and `sha256` in `Formula/caravay-audio.rb`.
Never replace an existing release archive with different bytes.

Validate installation and the formula test before publishing an update:

```sh
brew reinstall tjvjk/tap/caravay-audio
brew test tjvjk/tap/caravay-audio
```
