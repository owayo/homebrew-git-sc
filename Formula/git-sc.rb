class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.3.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.100/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "2232797de58368c9442bdd797cf6e9208e004a58730924eb489be5974089bb72"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.100/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "7dbec521003da3ad5dc09d61fb42f67606a04e526120af05dc88d143c3c44bfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.100/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f8889bd684e73757a2649d1efe80d0c73fe3857f216f05f782dd7162ea64a02"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.100/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9eeeaf94da862c7c27a2cf3fa261dc362f612f8414d794de8dc1eed7e8489eda"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
