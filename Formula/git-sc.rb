class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.102/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "d18399e26885fd35bf2635fdfb6899269b59d0c089f6fb7f54b9862a15def945"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.102/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "945232eb200468b43503507d2c87ea4133221f65dcb0c0cad29b7535b46d233c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.102/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77bdb9f5368573fc2d40c6190aacd8971b63a6d852da8565d138a8202ef145d4"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.102/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0982ded4dd2632614bbd9db8fedc9d85494070e9502f77129c4321aa7b8baa2c"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
