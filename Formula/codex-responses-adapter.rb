class CodexResponsesAdapter < Formula
  desc "Translate OpenAI Responses API to Chat Completions API"
  homepage "https://github.com/szj2ys/codex-responses-adapter"
  license "MIT"

  head "https://github.com/szj2ys/codex-responses-adapter.git", branch: "dev"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/codex-responses-adapter"
  end

  test do
    system "#{bin}/codex-responses-adapter", "--help"
  end
end
