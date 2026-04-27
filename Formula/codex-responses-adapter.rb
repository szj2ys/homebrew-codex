class CodexResponsesAdapter < Formula
  desc "Translate OpenAI Responses API to Chat Completions API"
  homepage "https://github.com/szj2ys/codex-responses-adapter"
  version "0.1.0"
  license "MIT"

  url "https://github.com/szj2ys/codex-responses-adapter/archive/refs/heads/dev.tar.gz"
  sha256 "64418c49a225d1219a86c7bf8a0c5a6c8ca155f99e9c2a08ecfd1b7b847b63f2"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/codex-responses-adapter"
  end

  test do
    system "#{bin}/codex-responses-adapter", "--help"
  end
end
