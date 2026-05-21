class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.5.102.tar.gz"
  sha256 "912313664865530dee019deaa7b9529685bae1785e3c40c4f7f58ad0940a4984"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.5.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ecb5103ce00d50e23aec7d94c703ac171f9e98e88e4aed378d17a953a9a4c408"
    sha256 cellar: :any_skip_relocation, sonoma: "ec13c1618d0732cbf5817cbb1056c8b096109160a5927d18c1ae3afed4461729"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ff93bb72f04c80e9a9f32fd7b7eca6ae03ce8778f3d86967747c813c3a423513"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
