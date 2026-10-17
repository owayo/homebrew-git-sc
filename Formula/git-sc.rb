class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.103/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "bc6ccd38df0617c74882513a82bde441fbf5cedadc0cf7fa55568fe919ef40da"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.103/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "ae3fed7c836ba3562bdc4822e2bbfd239a36ab0b4ee2c7f56c3850ad8470c386"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.103/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00ebd6e3244c6d974a0e9b57701426ecb6816b9f5292f4bbaf3bd8b0ab561e8a"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.103/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "135f49d2f19de53fc60e84ae5e503f9d72abeade50462cd780f366a0b3d1a11e"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
