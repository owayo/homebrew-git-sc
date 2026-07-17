class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.7.100.tar.gz"
  sha256 "137991ee89f376aff049f6734abb557e4166f8f95714373c867dc87197a76a2f"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.7.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ed4d788e52231e18b7c54d6d0e7e4a3913427491b205f9f558da6d020fb5115a"
    sha256 cellar: :any_skip_relocation, sonoma: "daa82beb90fec9ad99a9a7a08b2906720a50e06ca47f5b79b09712e5a89c3991"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f4dbcd41febd0f8834ac60b8e756379886eb6ed322d32c60d56f343318a2dbed"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
