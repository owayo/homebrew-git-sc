class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.109/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "dec86e33a0020e615621e512824794a08cdc6e6a5789acac7116058e6ed98172"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.109/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "b4a197ecf6ff2f711f19d7996fc893f261ecf8f6e95c66042e950a5411617757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.109/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "032b6f204b3131661c102a0e283692e2ce87f1c64d5fa398acca3c080e4d52f4"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.109/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71257b16a716b92f74efc0f560caf723cd3d5ba959a4723adc40e25ab0b6dc0a"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
