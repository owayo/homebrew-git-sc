class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.104/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "4645f5c73b0b8bd228f61172373e04936531e860c1e586a8ee0390c3b58a397b"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.104/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "982254c34ba6df212ad0abf3dca122dc36b2467f5d0437e64a8c3704fd5df2f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.104/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "268f0cabe8a724b9780b4c6c503fb68326969df129902e75f3e89622be5376f9"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.104/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eab3e17d3c7271230bd0c56d9952245758f172b379081fb62173dcbc0646251e"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
