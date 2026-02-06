class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.102/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "4a86eda9eb379dd23784a185b82bfa099342bb201d80cf80df0f716728f2b558"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.102/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "b827fe7d5c9b19d8fb259e95b74639c72674b9aa7d3160f3547f55e71f42cc2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.102/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c970b20b6f061313ea73f873f9484532af09059e9f411bd8f5aa0769db3bc31f"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.102/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a015280172a7f31b08da456e2860532d95552ed1261f177a4af69ff3d92b6c02"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
