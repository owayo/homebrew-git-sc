class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.3.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.103/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "8ea1b7077421196a956c13717a5dadb32906d84d4390a3d68af287403be2d1bc"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.103/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "374e5c1415d682b7a0a34aeae703f4301dc9942b10842fea5748af408fe1361b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.103/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09815049ace0da57ba5b56687393c5f4d61e713dca304748c3a55bdfc04056ec"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.103/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "703b9a165c2cb0a3a98e8645b571cb70302ae6f6cff45585ceb3a9562ab5a455"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
