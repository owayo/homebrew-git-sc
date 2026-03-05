class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.3.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.102/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "e91e7d4ceecbdce110e1dd12ac30691c1a5acad203a2a7c5cbd3c868fabd00e4"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.102/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "916bd35402ecb22ca8496362497fbd8659f0888451d7ce10d1123f5f8e5661b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.102/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0b8d4e29ca48de3d6d98455ab5bde319f42f17a56ec45350451511a688fbd6d"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.102/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d578b189ffbf218522721cf62fcb731a49bdcf6d9038869c4a9843c6f7e932e"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
