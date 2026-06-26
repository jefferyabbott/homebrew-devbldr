class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "2.10.0"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v2.10.0/devbldr-2.10.0-macos-arm64.tar.gz"
  sha256 "96529f1cadb65641253da0326477489c0dcf386fe8d728da5cd7935e3fda95fc"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devbldr --version")
  end
end
