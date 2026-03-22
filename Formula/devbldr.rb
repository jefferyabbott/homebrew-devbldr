class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "2.1.1"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v2.1.1/devbldr-2.1.1-macos-arm64.tar.gz"
  sha256 "bf555fcdd10b6f44f7017f05127ad6a0a089f7361d78bbef155b49383933e834"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match "DevBldr v#{version}", shell_output("#{bin}/devbldr --version")
  end
end
