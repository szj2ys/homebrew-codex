class CodexResponsesAdapter < Formula
  desc "Translate OpenAI Responses API to Chat Completions API"
  homepage "https://github.com/szj2ys/codex-responses-adapter"
  version "0.1.0"
  license "MIT"

  head "https://github.com/szj2ys/codex-responses-adapter.git", branch: "dev"

  url "https://github.com/szj2ys/codex-responses-adapter/archive/refs/heads/dev.tar.gz"
  sha256 :no_check

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/codex-responses-adapter"
  end

  test do
    system "#{bin}/codex-responses-adapter", "--help"
  end
end
