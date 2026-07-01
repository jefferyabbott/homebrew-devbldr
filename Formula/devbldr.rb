class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "2.14.5"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v2.14.5/devbldr-2.14.5-macos-arm64.tar.gz"
  sha256 "c974d18d8642988deb410100f0378c57ba0ce35cbaf318c08f3b1d86d9fd4488"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devbldr --version")
  end
end
