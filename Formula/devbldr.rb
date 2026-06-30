class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "2.14.0"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v2.14.0/devbldr-2.14.0-macos-arm64.tar.gz"
  sha256 "f6391c5e74bec2f5fabe6badd04d0175e21025d4c5c192347fd641fcd2198486"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devbldr --version")
  end
end
