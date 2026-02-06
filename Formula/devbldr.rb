class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "2.0.0"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v2.0.0/devbldr-2.0.0-macos-arm64.tar.gz"
  sha256 "2ac2f48bb7a1508091ce7dcd5cea8003644482b3355c23c6704938198704e38f"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match "DevBldr v#{version}", shell_output("#{bin}/devbldr --version")
  end
end
