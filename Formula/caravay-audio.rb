class CaravayAudio < Formula
  desc "Capture macOS system audio and stream raw PCM to stdout"
  homepage "https://github.com/tjvjk/caravay-audio"
  url "https://github.com/tjvjk/caravay-audio/releases/download/v0.1.0/caravay-audio-0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "8b19678b5d3b42c03389ca63bb0ad918e216ef49054aaae5b4c87223d50ff585"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    depends_on macos: :ventura
  end

  def install
    bin.install "caravay-audio"
  end

  def caveats
    <<~EOS
      On first capture, allow Screen & System Audio Recording in
      System Settings > Privacy & Security for the executable or its terminal.
      Retry after granting permission; restart the terminal if macOS requests it.
      Output is raw Float32 little-endian PCM, mono, 16000 Hz.
    EOS
  end

  test do
    assert_equal "caravay-audio #{version}",
                 shell_output("#{bin}/caravay-audio --version").strip
  end
end
