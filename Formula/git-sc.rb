class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.108/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "ff2cf2aca6c76f4c2629647e29d3380b713dacbd5f03c5918678ca2a20fa098a"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.108/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "dcdda78a5613736b5a36a23d6596766340fa5e1d71de28dde159c5f6a5b1ee84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.108/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "446c5a4fe246a73f1d50dd83630f457bc8f72abfe9621b5922d91348a9014774"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.108/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a9b6f78168534509c4871768b8070654ef9a8b224b25730f546ae59eb874ead"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
