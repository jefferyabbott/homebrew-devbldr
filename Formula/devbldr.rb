class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "1.0.0"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v1.0.0/devbldr-1.0.0-macos-arm64.tar.gz"
  sha256 "88e90242c5e4d41091080178eef5473cc730e03f710e7e1e297175f547a0802c"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match "DevBldr v#{version}", shell_output("#{bin}/devbldr --version")
  end
end
