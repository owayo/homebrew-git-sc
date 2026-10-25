class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.104/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "832c35286a38369a458e3e8aabb9efa0c76b9cc501fbc00919e7497f8cd03182"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.104/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "aeaf498faa401cbb3de9005b92e21ce2e070f8c760e8335d4182908582ce3749"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.104/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "657723996de034ae3debc450157f1e7e6cc50f67262e65f4dad3e70189029d7d"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.104/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c640432c1be7ec38a0945bba1496e86a2d094b4c7d6aae42167ad723c9729053"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
