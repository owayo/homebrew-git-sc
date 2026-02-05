class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.101/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "c2256003363c83b040bdec4eff80da872d8f46db20cc6bb219043a2cd78d09f8"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.101/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "b05e48b8f568af8c83f8db938bef0c25f8da466a61049a32cd1c034a9284016c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.101/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03f9adea511f2ebd409e75489f81747490b6ce02f17a9ef23229bf0e804e9f0b"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.101/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67908eb30990682ffdd088dd0487fc108573852e2c46ddc1a35531f0707f171e"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
