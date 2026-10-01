class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.100/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "5eed7d739190a61e7adf4eea2f7e0d884c60bcb81e950654bde3308874b34696"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.100/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "d8924e6d93d4118eb8ac50e3ce0f70cd848309e8d74fe4a1660875fe0f1b1e94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.100/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e03983c4cdb4bb57b9df0ad6524e2bdae8531d01318fcedfb7d47bd4e2a5a2e"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.100/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79eac400364ed8b5462c3cd76f7dd1c729b0fc322652928e7cef4ef9135dbfc2"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
