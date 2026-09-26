class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.102/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "0683bf3c87465c0d75fdb876b0f330585a33b7d0ea1be28ea9ce8a3b9b574642"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.102/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "e53a31f486c4f6917b45d8317330b4ca5505afbf0c28fbc4f205d0109e493a2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.102/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6acbb9c6bfe32d5b79ba51d37601e50209530da8cac52331b83cb36c7f6c0799"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.102/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae415125ce37f4b6b1701a717c8722bbbf85028b3493eeec56a69cadce5eabe1"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
