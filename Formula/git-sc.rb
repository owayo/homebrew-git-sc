class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.5.100.tar.gz"
  sha256 "c41776d45780e9866fc7aee6e3e9ac85405f0a8fb6878c7d4ef5f467ecea9180"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.5.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "712146875f0e4f4c88c723fc7f07755f349575f6f28b464143932283998a73e2"
    sha256 cellar: :any_skip_relocation, sonoma: "1c1acaeaa3cea4039bd3af6c791c3957383eb92cc6f7fcfa33d5d8ff79bd055a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "60dab3fb9881476416354bfaba4a383ab2fc77b66dfac0cb2c90b07b6114fbda"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
