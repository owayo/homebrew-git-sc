class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.107/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "2cd75e03da3d28b392b8f556a3f7ba3e92498edb2fdb6c5d3caad17c15f3366b"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.107/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "ce1c2421b7bc7715cb591d42830d0e99aad12f25eccefee52c2aef2505e49e7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.107/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cda38a6777bf15f63b95bef5d0883d2d289e86350f17830b5c1c33b72420f55"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.107/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aca1ccd1e0afb11b017ba4b407263bae62c3c3aae5933090a0e6650b9d58c25d"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
