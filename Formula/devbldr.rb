class Devbldr < Formula
  desc "Local-first AI coding assistant using Ollama LLMs"
  homepage "https://github.com/jefferyabbott/homebrew-devbldr"
  version "1.0.1"
  license "MIT"

  # ARM64 only - Intel Macs are not supported
  depends_on arch: :arm64
  depends_on macos: :monterey

  url "https://github.com/jefferyabbott/homebrew-devbldr/releases/download/v1.0.1/devbldr-1.0.1-macos-arm64.tar.gz"
  sha256 "497991cdb8a771b94679988b31cb4e1e4dc0c596e573a6c71d25d17490f5f659"

  def install
    bin.install "devbldr"
  end

  test do
    assert_match "DevBldr v#{version}", shell_output("#{bin}/devbldr --version")
  end
end
