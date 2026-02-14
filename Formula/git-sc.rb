class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.103/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "2ec380bc40daa3ddab63c5c531cd35d2f665ba5c7f1b28dd213b64c6e4a2e314"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.103/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "75d3088121f2371e1a29f3bb1a6b858ff5b200ac8012234dec70de03e7f23a6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.103/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75d02a83a18a4ed557e3374b56051ce75e50a1808a38f5231571d8446e3c7696"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.103/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "acd98ae2f30d0c6bc9db5274e34cbad880649e6894af12886f9b1b715e3c2ee5"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
