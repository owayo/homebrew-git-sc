class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.3.106.tar.gz"
  sha256 "8825c3339da5fc924afc0aae7e7e479208c69d22446617de318ec62ed8950b5f"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d8895190fb185a8ce9a77f073f366dcbff7703c24bccbf9f1ac2ab4a9a84da00"
    sha256 cellar: :any_skip_relocation, sonoma: "a2ecbcb1ef9b8ae97388429f31478b2739a0b9523b8637cc403aef60d0fb6a03"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f0ae24232ab53588eb3e6ed76391040be6bac3017b2a3b1154539c42605af23c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
