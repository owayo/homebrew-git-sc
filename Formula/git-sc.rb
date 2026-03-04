class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.3.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.101/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "c3fd16ea0c93311d55398dba9de135db717ae5ae06e275be474146a00568612a"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.101/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "c91b951eb7c43db206b57ed014c109596845decb23dc113709b33927d2962a76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.101/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4dfaf687e12f63090d0c60ac19b35b2f4956fed3abae945e612818b8795a202"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.101/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "489dccb26c441100664ed6556e45250b3bc96748425d82e95486a40be2ccba3a"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
