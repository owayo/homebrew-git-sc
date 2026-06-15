class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.6.102.tar.gz"
  sha256 "40ed80955455f2829d5dc0d70a0bec1ce78ad07c25f129a7d0e75ab87ab66f9c"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.6.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d8d36f41739b8e1e22ad43170e796c8fed317594521d0f1c45199c0befa393aa"
    sha256 cellar: :any_skip_relocation, sonoma: "d18dc3d6e57e275a0d63e05f4ae364c90abc90b2f396e943255369fb04e4a5c1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6ad086d8baf35d5c90853854c5c1b5a179896c7631141078ba8fa02ade2aecfb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
