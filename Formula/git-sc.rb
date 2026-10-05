class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.101/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "de757605149e412127f5ffc035d80c08b919e8bd94397f8cdb32f9fe9b1afc1f"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.101/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "8e9508cdad1a7aa046b29ff22879b91cb4c2e00dcc84be4fef2301988667693b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.101/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "312e3544bba604bdb58c3d47b572c54154da92775d3146cbc3c0405d213517ff"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.101/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0d2fe588e9a81f272226324ec87cf7bc5eab87c44cd005ebf5707cf6e98a9c2"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
