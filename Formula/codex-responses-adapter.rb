class CodexResponsesAdapter < Formula
  desc "Translate OpenAI Responses API to Chat Completions API"
  homepage "https://github.com/szj2ys/codex-responses-adapter"
  version "0.1.0"
  license "MIT"

  url "https://github.com/szj2ys/codex-responses-adapter/archive/4be6d2f49d6cca7eb4506ee0052f9aff3ea856ea.tar.gz"
  sha256 "faa234f505e968baba59e29cb62a704ce9f0255309bef31057bb566aa6c32d94"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/codex-responses-adapter"
  end

  test do
    system "#{bin}/codex-responses-adapter", "--help"
  end
end
