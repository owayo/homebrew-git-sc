class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.8.100.tar.gz"
  sha256 "6de00b29602527258c431cb1d47eb206ea22e8f9cc723dd7c27b2e0b79efd9ad"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.8.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2594a9cdf0e9e01b59b494bab4d2c722926b8edfea4d22c9fc5a3bb30b200ade"
    sha256 cellar: :any_skip_relocation, sonoma: "ce31b1e2f3e5e65c5700dd9b5dc761b71ef1665100bcf07d8f524715e969e02e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "de2c711a05d63093a45a9871fd694c8cd88a5664732f31689b8d0aed0088ba94"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
