class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.9.100.tar.gz"
  sha256 "4ddd342f25aef767b2d331eb23d436b9ab070f6ee7b78b327c5b0481de94e587"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.9.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "eccf7f790381182c1db11d75f3908dd5d9b2ecb6e3d22237f24749cabd99ce65"
    sha256 cellar: :any_skip_relocation, sonoma: "0919bd98dd25cbd1a0706ad23d2b630df928b6364c6095b62804d48edf992139"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b0b71ee31c20894ed3c2942f659639669d83d6bb14b11423f5285271020eda16"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
