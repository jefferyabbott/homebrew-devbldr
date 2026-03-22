class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "2.1.0"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v2.1.0/devbldr-2.1.0-macos-arm64.tar.gz"
  sha256 "8d0d034136261ffd54fb0e37c816768e6be96b87338dc18d4b3cea82dfdd98aa"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match "DevBldr v#{version}", shell_output("#{bin}/devbldr --version")
  end
end
