class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "2.7.3"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v2.7.3/devbldr-2.7.3-macos-arm64.tar.gz"
  sha256 "3c17e6518ee09b483e960465aae08098da099e329db8a861fce1fb1da4212974"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devbldr --version")
  end
end
