class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.111/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "d2886e7d8e4c2ca5a5fa58d56962449064bf5a6e76d669642c73f582ca3cb9c5"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.111/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "05a140f7de4b7f2474fd6a5be1d08e6cca2a714decb22033ca387ed0ad539be5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.111/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "452572ea264540bbd0a8d3c50974f96153df17062292cdfb2495fb3c62c4bc28"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.111/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bb4ba26360f497967a38f8d47c9c481ca91ddf78acc85f43e2893dd7ee7a87d"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
