class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.5.103.tar.gz"
  sha256 "f15d7b285eca94eacad03f382f2b795865f95aaf79e6be2f49093312cd3b5c8b"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.5.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "777c46297b3bebe849b51a09806148fc1030098513a47aa8970e69faabff6c66"
    sha256 cellar: :any_skip_relocation, sonoma: "44d385a5b56830048a72bb3ba39f781b500176627899ce0574539a5ab18b1908"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aa0bc42fc20e36451571a312fab966cef3f3049f984a2074feb3639641a14e6c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
