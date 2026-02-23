class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.110/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "cc72f5dd583f6d17ce1f30ada283f1b9fa1fe599f72b57844abaa0b9b3efd19e"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.110/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "8c0726175c549e4349d14ed6c51ff17325e93a2f0d43f6c1f6c41206f5d789b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.110/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1a64294e493bc32f61d721200c943bb45891bf2341c1f4d49a32349a6e8b26c"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.110/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f4635bc349acd6996ebe451803aa7704a24e14fb527ce9b087bbe617634c3e8"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
