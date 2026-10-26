class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.105/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "5da18afd8157dba078c77103d238e0e2bd0856cc72e377673a4c8c8e73e38a5c"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.105/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "2c043e7b0ac62cfff8e0eeafe9b79ddcc63a58dffcdf0fa39b91b13ed1fe81ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.105/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a75cf035d6c9f39e30f99b180071eab9ae6abdc21e5518fb8928fd0f65a5f8d"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.10.105/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14bc08c9e2968f8a8e007dd1cd9f296ed756ec99e1383f246594ddca4fccd0ce"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sc --version")
  end
end
