class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.5.104.tar.gz"
  sha256 "a114902c5fcce281fe3062e70bc2f5d628ea936f39e0db5c85359a6f335a04f9"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.5.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ae1f074583fb92bf3071a4bd7b9484eca8add4fa49a9e4ea9183c8d8b18a55ca"
    sha256 cellar: :any_skip_relocation, sonoma: "83f3cb2a8d82662c465056cf625f4e111c6ea7e2d176d0c389692899f833e6af"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0b819b6b6c2a6ab0dae1aacae9e7e680975610044985364f342db68eef3aa2d9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
