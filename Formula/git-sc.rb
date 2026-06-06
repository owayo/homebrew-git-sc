class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.6.100.tar.gz"
  sha256 "11208d3231f59cccdf0bca610a8d6e54421dd8d17dde5e11a6a09c8c2ba0d4c8"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.6.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "b388b7a5efa6cde84a77ce5904656cbbf888b6b81b76f7844439209fb1e844bd"
    sha256 cellar: :any_skip_relocation, sonoma: "ffc6eefc2eac9b9690958021f8394b73dd0a172ee81e45b7236385d4df3913ea"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5511725b4d53bd7c9d8e1165cc96b0f66b2175bef21a945498c31a906c161523"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
