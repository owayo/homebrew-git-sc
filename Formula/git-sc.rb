class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.101/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "c363963c2664be2dfcbe3d140e6607e477654dae58090e4bbd88f6fc43b050ba"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.101/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "8e21c43c4ef5bc3b7ad6559516c551a533718600ee17350ebcf13e678a6acc03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.101/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11e1f618fa5c8655f99068c9a07fb7175e5eea9679309c2b340d4f2ef3f7118e"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.101/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16912454d0add31218e1be347616e1f2a6ca0b10b01dc189712d96890362edb3"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
