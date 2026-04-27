class CodexResponsesAdapter < Formula
  desc "Translate OpenAI Responses API to Chat Completions API"
  homepage "https://github.com/szj2ys/codex-responses-adapter"
  version "0.0.0"
  license "MIT"

  head "https://github.com/szj2ys/codex-responses-adapter.git", branch: "main"

  def install
    odie <<~MSG
      This formula is a placeholder. The first release is not yet published.

      Two options:
        1. Wait for the first GitHub Release (triggered by pushing a v* tag), then run:
           brew update && brew upgrade codex-responses-adapter

        2. Build from source now:
           git clone https://github.com/szj2ys/codex-responses-adapter.git
           cd codex-responses-adapter && cargo build --release
    MSG
  end
end
