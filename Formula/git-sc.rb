class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.105/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "c86af649829cabc5baff7529c34b4a76c38d5afc5b35d46d6da14a943f1f34d2"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.105/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "b111a88cd1a2143560726ae8cd0531363b566afc4498eeaa1285aad5ad8426f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.105/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a87aa3f27e10c0dce26ffd326134548be1616fca951145379feba61423fa169"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.105/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be7e29094c9919fe472a17b28d6a50805a3ee89f7752198f1f6ca9722e445f7d"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
